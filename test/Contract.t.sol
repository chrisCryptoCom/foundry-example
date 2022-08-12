// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Contract.sol";

contract ContractTest is Test {
    Contract instance;

    function setUp() public {
        instance = new Contract();
    }

    function testAdd() public {
        uint a = 1;
        uint countBefore = instance.count();
        instance.add(a);
        uint countAfter = instance.count();
        assertEq(countAfter, countBefore + a);
    }
}
