// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract Contract is Ownable {
    uint public count;
    uint magicNumber;
    bool public isMagic;


    function setMagicNumber(uint _magicNumber) onlyOwner public {
        magicNumber = _magicNumber;
    }

    function add(uint a) public {

        count += a;

        if(magicNumber != 0) {
            isMagic = count == magicNumber;
        }
    }
    
}
