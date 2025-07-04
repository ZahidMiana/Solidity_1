// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

//1: Create a twitter contract 
//2: Create a mapping between user and tweet
//3: Add a Function to create a tweet and save into mapping
//4: Creat a function to get Tweet
//5: Add Array of Tweets

contract Twitter {
    //code 
    mapping (address => string []) public  tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(address _owner, uint _i) public view returns (string memory){
        return tweets[_owner][_i];
    }

    function GetAllTweet(address _owner) public view returns (string[] memory){
        return tweets[_owner];
    }
}