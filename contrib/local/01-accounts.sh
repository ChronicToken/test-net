#!/bin/bash
set -o errexit -o nounset -o pipefail

BASE_ACCOUNT=$(chtd keys show validator -a)
chtd q account "$BASE_ACCOUNT" -o json | jq

echo "## Add new account"
chtd keys add fred

echo "## Check balance"
NEW_ACCOUNT=$(chtd keys show fred -a)
chtd q bank balances "$NEW_ACCOUNT" -o json || true

echo "## Transfer tokens"
chtd tx send validator "$NEW_ACCOUNT" 1ustake --gas 1000000 -y --chain-id=testing --node=http://localhost:26657 -b block | jq

echo "## Check balance again"
chtd q bank balances "$NEW_ACCOUNT" -o json | jq
