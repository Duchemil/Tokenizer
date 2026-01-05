The goal of this project is to create an ERC-20 token fully compliant with Ethereum standards, using the secure and widely adopted OpenZeppelin library. We're using Metamask for our crypto-wallet with experimental wallets on to be able to see our own currency.

The smart contract is designed to:
- Implement a fungible ERC-20 token
- Define a custom token name and symbol
- Handle an initial supply provided by the user
- Allocate the entire initial supply to the contract deployer

This project serves as a practical introduction to ERC-20 token mechanics, unit management, and the use of industry-standard blockchain development tools.

When the contract is deployed, the deployer’s address automatically receives the entire token supply.

-Tokens are created only once, during deployment
-The full supply is allocated immediately to the deployer
-There is no mechanism to mint new tokens later as there is no public or external mint() function exists

The contract is built on top of OpenZeppelin, a reference framework widely adopted across the Ethereum ecosystem.

Main security advantages include:

-Well-tested and audited components used in production environments
-Built-in overflow and underflow protection thanks to Solidity 0.8+
-Native ERC-20 compliance without rewriting sensitive logic
-No administrative control once the contract is deployed
-No post-deployment minting, significantly limiting potential attack vectors
By removing privileged roles and mutable supply logic, the contract remains minimal and resilient.