//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract Modifier{


    modifier isEven(uint a){
        require(a%2==0, "Number is odd");
        _;
    }


    function f1(uint a) public pure isEven(a) returns (bool){
        return true;
    }
}