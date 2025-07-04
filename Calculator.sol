// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Calculator {

    uint256 result = 0;

    function add (uint256 numb) public {
        result += numb;
    }

    function sub (uint256 numb) public {
        result -= numb;
    }

    function mul (uint256 numb) public {
        result *= numb;
    }

    function div (uint256 numb) public {
        result /= numb;
    }

    function module (uint256 numb) public {
        result %= numb;
    }

    function get () public view returns (uint256) {
        return result;
    }


}