// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CoinToutPete42 is ERC20 {
    constructor(uint256 initialSupply) ERC20("CoinToutPete42", "CTP42") {
    _mint(msg.sender, initialSupply* 10 ** decimals());}
}
