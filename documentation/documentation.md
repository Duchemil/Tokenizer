The goal of this project is to create an ERC-20 token fully compliant with Ethereum standards, using the secure and widely adopted OpenZeppelin library.

The smart contract is designed to:
- Implement a fungible ERC-20 token
- Define a custom token name and symbol
- Handle an initial supply provided by the user
- Allocate the entire initial supply to the contract deployer

This project serves as a practical introduction to ERC-20 token mechanics, unit management, and the use of industry-standard blockchain development tools.

In order to do so I used Remix IDE to create a contract wizard based on the template of the ERC20/OpenZeppelin which gives this :

```
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CoinToutPete42 is ERC20 {
    constructor(uint256 initialSupply) ERC20("CoinToutPete42", "CTP42") {
    _mint(msg.sender, initialSupply* 10 ** decimals());}
}
```

The Token is called CoinToutPete42, abreviated to CTP42.
Originally the default number of tokens created is very low (1e-18) so I used the decimals to fix that and added * 10 to create 10 tokens instead of 1. 