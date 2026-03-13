// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import{ERC20Burnable, ERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Owner} from "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

/**
 * @title DecntralizedStableCoin
 * @author Eric Joseph
 * Collateral: Exogenous (ETH, BTC,)
 * Minting: Algorithmic
 * Stability Anchored to USD
 * 
 * This
 */

contract DecentralizedStableCoin is ERC20Burnable {

    constructor() ERC20("Decentralized Stable Coin", "DSC") {

    }

}