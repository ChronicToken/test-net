#!/bin/bash
set -o errexit -o nounset -o pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

echo "-----------------------"
echo "## Add new CosmWasm contract"
RESP=$(chtd tx wasm store "$DIR/../../x/wasm/keeper/testdata/hackatom.wasm" \
  --from validator --gas 1500000 -y --chain-id=testing --node=http://localhost:26657 -b block)

CODE_ID=$(echo "$RESP" | jq -r '.logs[0].events[1].attributes[-1].value')
echo "* Code id: $CODE_ID"
echo "* Download code"
TMPDIR=$(mktemp -t chtdXXXXXX)
chtd q wasm code "$CODE_ID" "$TMPDIR"
rm -f "$TMPDIR"
echo "-----------------------"
echo "## List code"
chtd query wasm list-code --node=http://localhost:26657 --chain-id=testing -o json | jq

echo "-----------------------"
echo "## Create new contract instance"
INIT="{\"verifier\":\"$(chtd keys show validator -a)\", \"beneficiary\":\"$(chtd keys show fred -a)\"}"
chtd tx wasm instantiate "$CODE_ID" "$INIT" --admin="$(chtd keys show validator -a)" \
  --from validator --amount="100ustake" --label "local0.1.0" \
  --gas 1000000 -y --chain-id=testing -b block | jq

CONTRACT=$(chtd query wasm list-contract-by-code "$CODE_ID" -o json | jq -r '.contracts[-1]')
echo "* Contract address: $CONTRACT"
echo "### Query all"
RESP=$(chtd query wasm contract-state all "$CONTRACT" -o json)
echo "$RESP" | jq
echo "### Query smart"
chtd query wasm contract-state smart "$CONTRACT" '{"verifier":{}}' -o json | jq
echo "### Query raw"
KEY=$(echo "$RESP" | jq -r ".models[0].key")
chtd query wasm contract-state raw "$CONTRACT" "$KEY" -o json | jq

echo "-----------------------"
echo "## Execute contract $CONTRACT"
MSG='{"release":{}}'
chtd tx wasm execute "$CONTRACT" "$MSG" \
  --from validator \
  --gas 1000000 -y --chain-id=testing -b block | jq

echo "-----------------------"
echo "## Set new admin"
echo "### Query old admin: $(chtd q wasm contract "$CONTRACT" -o json | jq -r '.contract_info.admin')"
echo "### Update contract"
chtd tx wasm set-contract-admin "$CONTRACT" "$(chtd keys show fred -a)" \
  --from validator -y --chain-id=testing -b block | jq
echo "### Query new admin: $(chtd q wasm contract "$CONTRACT" -o json | jq -r '.admin')"

echo "-----------------------"
echo "## Migrate contract"
echo "### Upload new code"
RESP=$(chtd tx wasm store "$DIR/../../x/wasm/keeper/testdata/burner.wasm" \
  --from validator --gas 1000000 -y --chain-id=testing --node=http://localhost:26657 -b block)

BURNER_CODE_ID=$(echo "$RESP" | jq -r '.logs[0].events[1].attributes[-1].value')
echo "### Migrate to code id: $BURNER_CODE_ID"

DEST_ACCOUNT=$(chtd keys show fred -a)
chtd tx wasm migrate "$CONTRACT" "$BURNER_CODE_ID" "{\"payout\": \"$DEST_ACCOUNT\"}" --from fred \
  --chain-id=testing -b block -y | jq

echo "### Query destination account: $BURNER_CODE_ID"
chtd q bank balances "$DEST_ACCOUNT" -o json | jq
echo "### Query contract meta data: $CONTRACT"
chtd q wasm contract "$CONTRACT" -o json | jq

echo "### Query contract meta history: $CONTRACT"
chtd q wasm contract-history "$CONTRACT" -o json | jq

echo "-----------------------"
echo "## Clear contract admin"
echo "### Query old admin: $(chtd q wasm contract "$CONTRACT" -o json | jq -r '.admin')"
echo "### Update contract"
chtd tx wasm clear-contract-admin "$CONTRACT" \
  --from fred -y --chain-id=testing -b block | jq
echo "### Query new admin: $(chtd q wasm contract "$CONTRACT" -o json | jq -r '.admin')"
