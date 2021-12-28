# Changelog

## [Unreleased](https://github.com/ChronicNetwork/chtd/tree/HEAD)

- bump github.com/cosmos/cosmos-sdk to 0.42.11
- bump github.com/cosmos/iavl to 0.17.3
- use replace to enforce consistency of versioning in imported libraries
- fixed circleci by removing the golang executor from a docker build

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.21.0...HEAD)

## [v0.21.0](https://github.com/ChronicNetwork/chtd/tree/v0.21.0) (2021-11-17)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.21.0...v0.20.0)

**Fixed bugs + Api Breaking:**
- Prevent infinite gas consumption in simulation queries [\#670](https://github.com/ChronicNetwork/chtd/issues/670)
- Amino JSON representation of inner message in Msg{Instantiate,Migrate,Execute}Contract [\#642](https://github.com/ChronicNetwork/chtd/issues/642)

**Implemented Enhancements:**
- Bump wasmvm to v1.0.0-beta2 [\#676](https://github.com/ChronicNetwork/chtd/pull/676)
- Add Benchmarks to compare with native modules [\#635](https://github.com/ChronicNetwork/chtd/issues/635)
- Document M1 is not supported [\#653](https://github.com/ChronicNetwork/chtd/issues/653)
- Open read access to sequences [\#669](https://github.com/ChronicNetwork/chtd/pull/669)
- Remove unused flags from command prompt for storing contract [\#647](https://github.com/ChronicNetwork/chtd/issues/647)
- Ran `make format` [\#649](https://github.com/ChronicNetwork/chtd/issues/649)
- Add golangci lint check to circleci jobs [\620](https://github.com/ChronicNetwork/chtd/issues/620)
- Updated error log statements in initGenesis for easier debugging: [\#643](https://github.com/ChronicNetwork/chtd/issues/643)
- Bump github.com/cosmos/iavl from 0.17.1 to 0.17.2 [\#673](https://github.com/ChronicNetwork/chtd/pull/673)
- Bump github.com/rs/zerolog from 1.25.0 to 1.26.0 [\#666](https://github.com/ChronicNetwork/chtd/pull/666)

## [v0.20.0](https://github.com/ChronicNetwork/chtd/tree/v0.20.0) (2021-10-08)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.20.0...v0.19.0)

**Fixed bugs:**

- Add capabilities to begin block [\#626](https://github.com/ChronicNetwork/chtd/pull/626)

**Api Breaking:**
- Update to wasmvm 1.0.0-soon2 [\#624](https://github.com/ChronicNetwork/chtd/issues/624)

**Implemented Enhancements:**

- Upgrade Cosmos-sdk v0.42.10 [\#627](https://github.com/ChronicNetwork/chtd/pull/627) ([alpe](https://github.com/alpe))
- Add transaction index implemented as counter [\#601](https://github.com/ChronicNetwork/chtd/issues/601)
- Fix inconsistent return of `contractAddress` from `keeper/init()`? [\#616](https://github.com/ChronicNetwork/chtd/issues/616)
- Query pinned wasm codes [\#596](https://github.com/ChronicNetwork/chtd/issues/596)
- Doc IBC Events [\#593](https://github.com/ChronicNetwork/chtd/issues/593)
- Allow contract Info query from the contract [\#584](https://github.com/ChronicNetwork/chtd/issues/584)
- Revisit reply gas costs for submessages. [\#450](https://github.com/ChronicNetwork/chtd/issues/450)
- Benchmarks for gas pricing [\#634](https://github.com/ChronicNetwork/chtd/pull/634)
- Treat all contracts as pinned for gas costs in reply [\#630](https://github.com/ChronicNetwork/chtd/pull/630)
- Bump github.com/spf13/viper from 1.8.1 to 1.9.0 [\#615](https://github.com/ChronicNetwork/chtd/pull/615)

## [v0.19.0](https://github.com/ChronicNetwork/chtd/tree/v0.19.0) (2021-09-15)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.19.0...v0.18.0)

**Fixed bugs:**

- Ensure Queries are executed read only [\#610](https://github.com/ChronicNetwork/chtd/issues/610)
- Fix bug in query handler initialization on reply [\#604](https://github.com/ChronicNetwork/chtd/issues/604)

**Api Breaking:**
- Bump Go version to  1.16 [\#612](https://github.com/ChronicNetwork/chtd/pull/612)

**Implemented Enhancements:**

- Ensure query isolation [\#611](https://github.com/ChronicNetwork/chtd/pull/611)
- Optimize BalanceQuery [\#609](https://github.com/ChronicNetwork/chtd/pull/609)
- Bump wasmvm to v0.16.1 [\#605](https://github.com/ChronicNetwork/chtd/pull/605)
- Bump github.com/rs/zerolog from 1.23.0 to 1.25.0 [\#603](https://github.com/ChronicNetwork/chtd/pull/603)
- Add decorator options [\#598](https://github.com/ChronicNetwork/chtd/pull/598)
- Bump github.com/spf13/cast from 1.4.0 to 1.4.1 [\#592](https://github.com/ChronicNetwork/chtd/pull/592)

## [v0.18.0](https://github.com/ChronicNetwork/chtd/tree/v0.18.0) (2021-08-16)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.18.0...v0.17.0)

**Api Breaking:**
- Events documented and refactored [\#448](https://github.com/ChronicNetwork/chtd/issues/448), [\#589](https://github.com/ChronicNetwork/chtd/pull/589), [\#587](https://github.com/ChronicNetwork/chtd/issues/587)
- Add organisation to grpc gateway path [\#578](https://github.com/ChronicNetwork/chtd/pull/578)
- Move Proto version from `v1beta1` to `v1` for all cosmwasm.wasm.* types
  [\#563](https://github.com/ChronicNetwork/chtd/pull/563)
- Renamed InitMsg and MigrateMsg fields to Msg. This applies to protobuf Msg
  and Proposals, as well as REST and CLI [\#563](https://github.com/ChronicNetwork/chtd/pull/563)
- Removed source and builder fields from StoreCode and CodeInfo. They were rarely used.
  [\#564](https://github.com/ChronicNetwork/chtd/pull/564)  
- Changed contract address derivation function. If you hardcoded the first contract
  addresses anywhere (in scripts?), please update them.
  [\#565](https://github.com/ChronicNetwork/chtd/pull/565)

**Implemented Enhancements:**
- Cosmos SDK 0.42.9, wasmvm 0.16.0 [\#582](https://github.com/ChronicNetwork/chtd/pull/582) 
- Better ibc contract interface [\#570](https://github.com/ChronicNetwork/chtd/pull/570) ([ethanfrey](https://github.com/ethanfrey))
- Reject invalid events/attributes returned from contracts [\#560](https://github.com/ChronicNetwork/chtd/pull/560)
- IBC Query methods from Wasm contracts only return OPEN channels [\#568](https://github.com/ChronicNetwork/chtd/pull/568)
- Extendable gas costs [\#525](https://github.com/ChronicNetwork/chtd/issues/525)
- Limit init/migrate/execute payload message size [\#203](https://github.com/ChronicNetwork/chtd/issues/203)
- Add cli alias [\#496](https://github.com/ChronicNetwork/chtd/issues/496)
- Remove max gas limit [\#529](https://github.com/ChronicNetwork/chtd/pull/529) ([alpe](https://github.com/alpe))
- Add SECURITY.md [\#303](https://github.com/ChronicNetwork/chtd/issues/303)

## [v0.17.0](https://github.com/ChronicNetwork/chtd/tree/v0.17.0) (2021-05-26)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.17.0...v0.16.0)

**Features:**
- Remove json type cast for contract msgs [\#520](https://github.com/ChronicNetwork/chtd/pull/520) ([alpe](https://github.com/alpe))
- Bump github.com/cosmos/cosmos-sdk from 0.42.4 to 0.42.5 [\#519](https://github.com/ChronicNetwork/chtd/pull/519) ([dependabot-preview[bot]](https://github.com/apps/dependabot-preview))

## [v0.16.0](https://github.com/ChronicNetwork/chtd/tree/v0.16.0) (2021-04-30)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.15.1...v0.16.0)

**Features:**
- Upgrade to wasmvm v0.14.0-rc1 [\#508](https://github.com/ChronicNetwork/chtd/pull/508) ([alpe](https://github.com/alpe))
- Use the cache metrics from WasmVM [\#500](https://github.com/ChronicNetwork/chtd/issues/500)
- Update IBC.md [\#494](https://github.com/ChronicNetwork/chtd/pull/494) ([ethanfrey](https://github.com/ethanfrey))
- Extend ContractInfo for custom data [\#492](https://github.com/ChronicNetwork/chtd/pull/492) ([alpe](https://github.com/alpe))
- Reply response on submessages can overwrite "caller" result [\#495](https://github.com/ChronicNetwork/chtd/issues/495)
- Update to sdk 0.42.4 [\#485](https://github.com/ChronicNetwork/chtd/issues/485)
- Add extension points to the CLI [\#477](https://github.com/ChronicNetwork/chtd/pull/477) ([alpe](https://github.com/alpe))
- Simplify staking reward query [\#399](https://github.com/ChronicNetwork/chtd/issues/399)
- Update IBC.md [\#398](https://github.com/ChronicNetwork/chtd/issues/398)
- Add IBCQuery support [\#434](https://github.com/ChronicNetwork/chtd/issues/434)
- Follow proto dir best practice \(in cosmos eco\) [\#342](https://github.com/ChronicNetwork/chtd/issues/342)
- Remove internal package [\#464](https://github.com/ChronicNetwork/chtd/pull/464) ([alpe](https://github.com/alpe))
- Introduce new interfaces for extendability [\#471](https://github.com/ChronicNetwork/chtd/pull/471) ([alpe](https://github.com/alpe))
- Handle non default IBC transfer port in message encoder [\#396](https://github.com/ChronicNetwork/chtd/issues/396)
- Collect Contract Metrics [\#387](https://github.com/ChronicNetwork/chtd/issues/387)
- Add Submessages for IBC callbacks [\#449](https://github.com/ChronicNetwork/chtd/issues/449)
- Handle wasmvm Burn message [\#489](https://github.com/ChronicNetwork/chtd/pull/489) ([alpe](https://github.com/alpe))
- Add telemetry [\#463](https://github.com/ChronicNetwork/chtd/pull/463) ([alpe](https://github.com/alpe))
- Handle non default transfer port id [\#462](https://github.com/ChronicNetwork/chtd/pull/462) ([alpe](https://github.com/alpe))
- Allow subsecond block times [\#453](https://github.com/ChronicNetwork/chtd/pull/453) ([ethanfrey](https://github.com/ethanfrey))
- Submsg and replies [\#441](https://github.com/ChronicNetwork/chtd/pull/441) ([ethanfrey](https://github.com/ethanfrey))
- Ibc query support [\#439](https://github.com/ChronicNetwork/chtd/pull/439) ([ethanfrey](https://github.com/ethanfrey))
- Pin/Unpin contract in cache [\#436](https://github.com/ChronicNetwork/chtd/pull/436) ([alpe](https://github.com/alpe))
- Stargate msg and query [\#435](https://github.com/ChronicNetwork/chtd/pull/435) ([ethanfrey](https://github.com/ethanfrey))
- Sudo entry point [\#433](https://github.com/ChronicNetwork/chtd/pull/433) ([ethanfrey](https://github.com/ethanfrey))
- Add custom message handler option [\#402](https://github.com/ChronicNetwork/chtd/pull/402) ([alpe](https://github.com/alpe))
- Expose contract pinning [\#401](https://github.com/ChronicNetwork/chtd/issues/401)
- Add support for Stargate CosmosMsg/QueryRequest [\#388](https://github.com/ChronicNetwork/chtd/issues/388)
- Add MsgInstantiateContractResponse.data [\#385](https://github.com/ChronicNetwork/chtd/issues/385)
- Added randomized simulation parameters generation [\#389](https://github.com/ChronicNetwork/chtd/pull/389) ([bragaz](https://github.com/bragaz))
- Implement IBC contract support [\#394](https://github.com/ChronicNetwork/chtd/pull/394) ([alpe](https://github.com/alpe))

**Api breaking:**
- Improve list contracts by code query [\#497](https://github.com/ChronicNetwork/chtd/pull/497) ([alpe](https://github.com/alpe))
- Rename to just `funds` [/#423](https://github.com/ChronicNetwork/chtd/issues/423)

**Fixed bugs:**

- Correct order for migrated contracts [\#323](https://github.com/ChronicNetwork/chtd/issues/323)
- Keeper Send Coins does not perform expected validation [\#414](https://github.com/ChronicNetwork/chtd/issues/414)

## [v0.15.1](https://github.com/ChronicNetwork/chtd/tree/v0.15.1) (2021-02-18)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.15.0...v0.15.1)

**Implemented enhancements:**

- Support custom MessageHandler in wasm [\#327](https://github.com/ChronicNetwork/chtd/issues/327)

**Fixed bugs:**

- Fix Parameter change via proposal  [\#392](https://github.com/ChronicNetwork/chtd/issues/392)

## [v0.15.0](https://github.com/ChronicNetwork/chtd/tree/v0.15.0) (2021-01-27)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.14.1...v0.15.0)

**Features:**
- Upgrade to cosmos-sdk v0.41.0 [\#390](https://github.com/ChronicNetwork/chtd/pull/390)

## [v0.14.1](https://github.com/ChronicNetwork/chtd/tree/v0.14.1) (2021-01-20)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.14.0...v0.14.1)

**Features:**
- Upgrade to cosmos-sdk v0.40.1 final + Tendermint 0.34.3 [\#380](https://github.com/ChronicNetwork/chtd/pull/380)

## [v0.14.0](https://github.com/ChronicNetwork/chtd/tree/v0.14.0) (2021-01-11)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.13.0...v0.14.0)

**Features:**
- Upgrade to cosmos-sdk v0.40.0 final [\#354](https://github.com/ChronicNetwork/chtd/pull/369)
- Refactor to GRPC message server [\#366](https://github.com/ChronicNetwork/chtd/pull/366)
- Make it easy to initialize contracts in genesis file with new CLI commands[\#326](https://github.com/ChronicNetwork/chtd/issues/326)
- Upgrade to WasmVM v0.13.0 [\#358](https://github.com/ChronicNetwork/chtd/pull/358)
- Upgrade to cosmos-sdk v0.40.0-rc6 [\#354](https://github.com/ChronicNetwork/chtd/pull/354)
- Upgrade to cosmos-sdk v0.40.0-rc5 [\#344](https://github.com/ChronicNetwork/chtd/issues/344)
- Add Dependabot to keep dependencies secure and up-to-date [\#336](https://github.com/ChronicNetwork/chtd/issues/336)

**Fixed bugs:**

- Dependabot can't resolve your Go dependency files [\#339](https://github.com/ChronicNetwork/chtd/issues/339)
- Errors in `InitGenesis` [\#335](https://github.com/ChronicNetwork/chtd/issues/335)
- Invalid homeDir for export command [\#334](https://github.com/ChronicNetwork/chtd/issues/334)

## [v0.13.0](https://github.com/ChronicNetwork/chtd/tree/v0.13.0) (2020-12-04)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.12.1...v0.13.0)

**Fixed bugs:**

- REST handler wrong `Sender` source [\#324](https://github.com/ChronicNetwork/chtd/issues/324)

**Closed issues:**

- Change proto package to match \<organisation\>.\<module\>.\<version\> [\#329](https://github.com/ChronicNetwork/chtd/issues/329)
- Out of gas causes panic when external contract store query executed [\#321](https://github.com/ChronicNetwork/chtd/issues/321)
- Check codecov report [\#298](https://github.com/ChronicNetwork/chtd/issues/298)
- cosmwasm.GoAPI will not work on sdk.ValAddress [\#264](https://github.com/ChronicNetwork/chtd/issues/264)
- Stargate: Add pagination support for queries [\#242](https://github.com/ChronicNetwork/chtd/issues/242)

**Merged pull requests:**

- Rename protobuf package [\#330](https://github.com/ChronicNetwork/chtd/pull/330) ([alpe](https://github.com/alpe))
- Use base request data for sender [\#325](https://github.com/ChronicNetwork/chtd/pull/325) ([alpe](https://github.com/alpe))
- Handle panics in query contract smart [\#322](https://github.com/ChronicNetwork/chtd/pull/322) ([alpe](https://github.com/alpe))

## [v0.12.1](https://github.com/ChronicNetwork/chtd/tree/v0.12.1) (2020-11-23)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.12.0...v0.12.1)

**Closed issues:**

- Complete IBC Mock testing [\#255](https://github.com/ChronicNetwork/chtd/issues/255)
- Idea: do multiple queries in one API call [\#72](https://github.com/ChronicNetwork/chtd/issues/72)

**Merged pull requests:**

- Exclude generate proto code files in coverage [\#320](https://github.com/ChronicNetwork/chtd/pull/320) ([alpe](https://github.com/alpe))
- Upgrade wasmvm to 0.12.0 [\#319](https://github.com/ChronicNetwork/chtd/pull/319) ([webmaster128](https://github.com/webmaster128))
- Fix chain id setup in contrib/local/setup\_chtd.sh [\#318](https://github.com/ChronicNetwork/chtd/pull/318) ([orkunkl](https://github.com/orkunkl))
- Add pagination to grpc queries [\#317](https://github.com/ChronicNetwork/chtd/pull/317) ([alpe](https://github.com/alpe))

## [v0.12.0](https://github.com/ChronicNetwork/chtd/tree/v0.12.0) (2020-11-17)

[Full Changelog](https://github.com/ChronicNetwork/chtd/compare/v0.12.0-alpha1...v0.12.0)

**Closed issues:**

- Merge chtd and wasmcli into a single binary [\#308](https://github.com/ChronicNetwork/chtd/issues/308)
- Change bech32 prefix for chtd [\#313](https://github.com/ChronicNetwork/chtd/issues/313)
- Upgrade go-cowasmwasm to wasmvm 0.12 [\#309](https://github.com/ChronicNetwork/chtd/issues/309)
- Use string type for AccAddresses in proto  [\#306](https://github.com/ChronicNetwork/chtd/issues/306)
- Upgrade to cosmos/sdk v0.40.0-rc2 [\#296](https://github.com/ChronicNetwork/chtd/issues/296)
- Generate protobuf outputs in a container [\#295](https://github.com/ChronicNetwork/chtd/issues/295)
- Instantiate contract process ordering [\#292](https://github.com/ChronicNetwork/chtd/issues/292)
- Make Wasm maxSize a configuration option [\#289](https://github.com/ChronicNetwork/chtd/issues/289)
- Return error if wasm to big [\#287](https://github.com/ChronicNetwork/chtd/issues/287)

**Merged pull requests:**

- Set bech32 prefix [\#316](https://github.com/ChronicNetwork/chtd/pull/316) ([alpe](https://github.com/alpe))
- Replace sdk.AccAddress with bech32 string [\#314](https://github.com/ChronicNetwork/chtd/pull/314) ([alpe](https://github.com/alpe))
- Integrate wasmcli into chtd [\#312](https://github.com/ChronicNetwork/chtd/pull/312) ([alpe](https://github.com/alpe))
- Upgrade wasmvm aka go-cosmwasm [\#311](https://github.com/ChronicNetwork/chtd/pull/311) ([alpe](https://github.com/alpe))
- Upgrade to Stargate RC3 [\#305](https://github.com/ChronicNetwork/chtd/pull/305) ([alpe](https://github.com/alpe))
- Containerized Protobuf generation  [\#304](https://github.com/ChronicNetwork/chtd/pull/304) ([alpe](https://github.com/alpe))
- Reject wasm code exceeding limit  [\#302](https://github.com/ChronicNetwork/chtd/pull/302) ([alpe](https://github.com/alpe))
- Support self calling contract on instantiation [\#300](https://github.com/ChronicNetwork/chtd/pull/300) ([alpe](https://github.com/alpe))
- Upgrade to Stargate RC2 [\#299](https://github.com/ChronicNetwork/chtd/pull/299) ([alpe](https://github.com/alpe))
