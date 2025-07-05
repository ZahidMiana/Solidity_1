//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract Modifier {
    address public owner;
    bool public paused;
    mapping(address => uint) public balance;

    constructor() {
        owner = msg.sender;
        paused = false;
        balance[owner] = 1000;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "caller is not owner");
        _;
    }

    modifier notPaused() {
        require(paused == false, "The Contract is Paused");
        _;
    }

    function pause() public onlyOwner {
        paused = true;
    }

    function unpause() public onlyOwner {
        paused = false;
    }

    function transfer(address to, uint amount) public notPaused {
        require(balance[msg.sender] >= amount, "Insufficient Balance");
        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
}