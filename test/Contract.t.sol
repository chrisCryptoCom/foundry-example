// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Contract.sol";

contract ContractTest is Test {
    Contract instance;
    address owner = address(123456);

    function setUp() public {
        instance = new Contract(owner);
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

    function invariantIsNotMagicNumber() public {
        assertFalse(instance.isMagic(), "Should never be magic");
    }

    function testNonOwnerCantSetMagicNumber() public {
        vm.expectRevert("Ownable: caller is not the owner");
        instance.setMagicNumber(1);
    }

    function testOwnerCanSetMagicNumber() public {
        vm.prank(owner);
        instance.setMagicNumber(1);
    }

}
