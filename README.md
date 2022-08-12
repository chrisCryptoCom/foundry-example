# Foundry Framework Example
Example repo to demonstrate the functionality of the [foundry](https://github.com/foundry-rs/foundry) smart contract development framework.
Foundry is set apart by several advantages:

1. Tests / Scripts etc. are all written in solidity avoiding switching between JS and Solidity during development
2. Efficient implementation in Rust leads to massive speedup vs. other tools.
3. Powerful testing tools such as fuzzing, invariant tests (and soon symbolic execution)
4. Easy manipulation of the blockchain state etc. using [Cheatcodes](https://book.getfoundry.sh/forge/cheatcodes?highlight=vm.#cheatcodes)

# Foundry Framework Example

# Getting started 

## Documentation
The best source of documentation is the [foundry-book](https://book.getfoundry.sh/) which contains chapters on all elements of the framework.

## Installation 

1. Install `foundryup` tool by running `curl -L https://foundry.paradigm.xyz | bash`
2. Install / Update foundry with `foundryup`

# Structure

Foundry consists of three main tools which have separate command line interfaces:

- `forge`: Solidity development framework including Tests, Scripting, Compilation, Formatting etc. (Focus of this demo repo)
- `anvil`: Runs local test node (similar to `hardhat node`)
- `cast`: Various tools for interacting with contracts on chain directly from the command line. (Executing calls, analysing interfaces, transactions etc)


# Forge

Help on any of the below command can be found with `forge COMMAND --help`

## Initialize a new project (with example code)
`forge init` (useful options `--no-commit`, `--force`)

## Install a depencency
`forge install forge install openzeppelin/openzeppelin-contracts` (Specify github repo owner/name to select depency)

## Compile contracts
`forge build` 

## Run tests
`forge test`  (useful options `--fork-url`, `--match-test` ...)

## Run script
`forge script script/ContractScript.sol:ContractScript`  (useful options `--rpc-url`, `--private-key`, `--slow`, `--broadcast` ...)

