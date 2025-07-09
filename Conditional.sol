//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;


contract Conditional {
    //same as loop we use if else condition inside function

    function checking(uint a , uint b) public pure returns (uint){
        if(a>b)
        {
            return 1;
        }
        else if(a == b)
        {
            return 2;
        }
        else 
        {
            return 0;
        }
    }
}