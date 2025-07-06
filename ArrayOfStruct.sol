//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract ArrayOfStruct {

    //struct
    struct Student{
        string name;
        uint rollNumber;
        bool pass;
    }

    //arr of struct
    Student[4] public s1;

    //function to add data
    function insertData(uint index, string memory _name, uint _roll, bool _pass) public{
        s1[index] = Student(_name, _roll, _pass);
    }

    function returnData(uint index) public view returns(Student memory){
        return s1[index];
    }
}