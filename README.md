# Secure ERC20 Token (OpenZeppelin based)

# Features
ERC20 Standard<br>
Mintable (onlyOwner)<br>
Burnable<br>
Pausable<br>
Custom Initial Supply<br>
Ownership Transfer<br>
Fully Tested (Foundry)<br>

## Tech Stack
Solidity 0.8.x<br>
OpenZeppelin<br>
Foundry<br>

## Deployment
```Contract Address: 0xdbd4f037f3fEDC5757367b32B52d4d0185CE2c41```<br>
## Verified Contract
```https://sepolia.etherscan.io/address/0xdbd4f037f3fEDC5757367b32B52d4d0185CE2c41#code```<br>

<hr>

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
