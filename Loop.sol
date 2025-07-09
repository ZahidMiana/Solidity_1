//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract Loop {
    //while Loop
    //For Loop
    //Do While Loop
    //But Remember we cannot use these loops at contratc 
    //level, BUt we use in Functions.

    function  whileLoop() public pure returns (uint){
        uint sum=0;
        uint count =1;
        while(count<5){
            sum+=count;
            count+=1;
        }
        return sum;
    }

    function forLoop() public pure returns (uint){
        uint sum =0;

        for(uint count=1; count<5; count++)
        {
            sum+=count;
        }
        return sum;
    }

    function DoWhileLoop() public pure returns(uint){
        uint sum =0;
        uint count =1;

        do{
            sum+=count;
            count+=1;
        }while(count<5);

        return sum;
    }
}