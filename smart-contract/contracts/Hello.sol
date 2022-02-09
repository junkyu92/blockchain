//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.22 <0.9.0;

contract Hello {
    string public greet;

    constructor(string memory _greet){
        greet = _greet;
    }

    function setGreet(string memory _greet) public{
        greet = _greet;
    }

    function getGreet() view public returns (string memory) {
        return greet;
    }

}