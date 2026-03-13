// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;



/**
 * @title DecntralizedStableCoin Engine
 * @author Eryc Joseph
 * 
 * This system is thorougly designed to be as miniman as possile, and have the tokens maintain a 1 token == $1 peg.
 * Exogenous collateral
 * United States Dollar Anchored 
 * Algorithmically Stable
 */
contract DSCEngine{

    function depositCollateralAndMintDsc() external {}
    function depositColateral(address tokenCollateralAddress, uint collateralAmount) external {}
    function reedeemCollateralForDsc() external {}
    function redeemCollateral() external {}
    function mintDsc() external {}
    function burnDsc() external {}
    function liquiate() external {}
    function getHealthFactor() external view {}

}