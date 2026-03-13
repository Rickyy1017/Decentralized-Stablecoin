// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {DecentralizedStableCoin} from "../src/DecentralizedStablrCoin.sol";
import {Test} from "forge-std/Test.sol";

contract DStableCoinTest is Test{
    
    function setUp() external{
        DecentralizedStableCoin dstc = new DecentralizedStableCoin();
    }
}