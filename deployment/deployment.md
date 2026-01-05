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
Now that we have this file we compile it on the interface.

Now to deploy the contrat we go to the "Deploy & Run transactions" panel, choose our environment through Browser extension > Sepolia testnet - Metamask.
Estimated gas is the "real" price to create the transaction, here it's a testnet so we already have a handful that needed to be mined for a few minutes.

We put an initialSupply which is the number of coins created.
We then Deploy & Verify, confirm through Metamask.

To Verify & Publish our contrat source code we need to go to the "view on etherscan" from the terminal -> the "from" link -> Contract creation -> Contract -> Verify & Publish -> Put the flattened file into the input.

We then have a contract that is built with OpenZeppelin.