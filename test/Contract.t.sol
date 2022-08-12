// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Contract.sol";

contract ContractTest is Test {
    Contract instance;

    function setUp() public {
        instance = new Contract();
    }

    function testAdd(uint a) public {
        uint countBefore = instance.count();
        instance.add(a);
        uint countAfter = instance.count();
        assertEq(countAfter, countBefore + a);
    }

    function testAddTwice(uint a) public {
        a = a / 2;
        uint countBefore = instance.count();
        instance.add(a);
        instance.add(a);
        uint countAfter = instance.count();
        assertEq(countAfter, countBefore + a * 2);
    }
}
