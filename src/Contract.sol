// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Contract {
    uint public count;
    uint magicNumber;
    bool public isMagic;


    function setMagicNumber(uint _magicNumber) public {
        magicNumber = _magicNumber;
    }

    function add(uint a) public {

        count += a;

        if(magicNumber != 0) {
            isMagic = count == magicNumber;
        }
    }
    
}
