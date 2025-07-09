//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

 //Lottery Smart Contract

 contract Project1{
    //Entities - manager, player and winner
    address public manager;
    address payable [] public players;
    address payable public winner;

    constructor(){
        manager = msg.sender;
    }

    function Participate() public payable {
        require(msg.value == 1 ether, "Please Pay 1 ether to Play");
        players.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint) {
        require(manager == msg.sender, "You are not the manager");
        return address(this).balance;
    }

    //random number
    function random() internal   view returns(uint){
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players.length)));
    }

    //WINNER METHOD
    function picWinner() public {
        require (manager == msg.sender, "You are not the manager");
        require (players.length >=3 , "Player are less then 3");

        uint r = random();
        uint index = r%players.length;
        winner = players[index];
        winner.transfer(getBalance());

        players = new address payable[](0);//this will initialize the player 
        //back to zero
    }
 }