// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

//1: Create a twitter contract 
//2: Create a mapping between user and tweet
//3: Add a Function to create a tweet and save into mapping
//4: Creat a function to get Tweet
//5: Add Array of Tweets
//6: Add the Struct to the Array
//7: Use Require to limit the length of the tweeet to be only 280 character

contract Twitter {
    //code 

    uint16 constant MAX_TWEET_LENGTH = 280;

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }




    mapping (address => Tweet []) public  tweets;

    function createTweet(string memory _tweet) public {

        //its like if tweet length <280 we are good , other wise bad
        require(bytes(_tweet).length <= MAX_TWEET_LENGTH , "Tweet is too Long");

        Tweet memory newTweet = Tweet ({
            author : msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _owner, uint _i) public view returns (Tweet memory){
        return tweets[_owner][_i];
    }

    function GetAllTweet(address _owner) public view returns (Tweet [] memory){
        return tweets[_owner];
    }
}