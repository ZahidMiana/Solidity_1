//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract Global{
    //msg.sender
    function CallerAddress() public view returns(address) {
        return msg.sender;
    }
}