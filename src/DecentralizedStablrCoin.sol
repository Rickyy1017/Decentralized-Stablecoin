// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import{ERC20Burnable, ERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

/**
 * @title DecntralizedStableCoin
 * @author Eric Joseph
 * Collateral: Exogenous (ETH, BTC,)
 * Minting: Algorithmic
 * Stability Anchored to USD
 * 
 * This
 */

contract DecentralizedStableCoin is ERC20Burnable, Ownable{

    error DecentralizedStableCoin_MustBeAboveZero();
    error DecentralizedStableCoin_BurnAmountAboveBalance();
    error DecentralizedStableCoin_NotAddressZero();
    
    constructor() ERC20("Decentralzed Stable Coin", "DSC") Ownable(msg.sender) {}

    // burn function to verify burn balance 
    function burn(uint _amount) public override onlyOwner{
        uint balance = balanceOf(msg.sender);

        if(_amount <= 0){
            revert DecentralizedStableCoin_MustBeAboveZero();
        }
        if(balance < _amount){
            revert DecentralizedStableCoin_BurnAmountAboveBalance();
        }
        super.burn(_amount);
    }

    // avoid minting to address zero
    // checks amount to verify its not sending a negative amount so it must be anove zero
    function mint(address _to, uint _amount) external onlyOwner returns(bool){
        if(_to == address(0)){
            revert DecentralizedStableCoin_NotAddressZero();
        }
        if(_amount <= 0){
            revert DecentralizedStableCoin_MustBeAboveZero();
        }
        _mint(_to, _amount);
        return true;
    }
}