//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;


contract Array{

    //1. Remember for reference data types data location use (memory, storage, call data)
    //2. Array Declarations -> uint[] public arr = [10,5]
    //3. Static Array , Dynamic Array


    //Static Array
    uint[3] public arr1; //this initialize zero to all index

    uint[5] public myarr =[10,20,30,40,50];

    //Add Element into the array
    function insertArray(uint _item, uint index) public {
        arr1[index] = _item;
    }

    //for getting ELement
    function returnArr(uint index) public view  returns (uint)
    {
        return arr1[index];
    }
    //for getting whole array
    function returnAll() public view returns(uint[3] memory)
    {
        return arr1;
    }




    //Dynamic Array
    //1. uint[] public arr2
    //2. use push method to add element
    //3. use pop method to remove element
    //4. use length element for calcuate arr length

    uint[] public miana;

    function addElement(uint _item) public {
        miana.push(_item);
    }

    function removeElement() public {
        miana.pop();
    }

    function lengthArr() public view returns (uint){
        return miana.length;
    }

    function returnAlll() public view returns (uint[] memory){
        return miana;
    }
}