//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract Struct {
    struct Student{
        string name;
        uint rollNumber;
        bool pass;
    }

    Student public s1;

    //insert data into sruct
    function insert(string memory _name, uint _roll, bool _pass) public {
        //one way
        s1 = Student(_name, _roll, _pass);
        
        //other way
        // s1.name = _name;
        // s1.rollNumber = _roll;
        // s1.pass = _pass;
    }

    //getter
    function getter() public view returns(Student memory) {
        return s1;
    } 
}

