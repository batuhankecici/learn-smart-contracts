// SPDX-License-Identifier: MIT 
// pragma version tanımlamaya yarıyor en üstte yazılmalı
// ^0.6.0 7nin altında bi süründe çalışır, 0.6.0 direkt 6da çalışır
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{
    // this will get initialized to 0
    uint256 favoriteNumber;
    bool favoriteBool = true;
    string favoriteString = "deneme";
    int256 favoriteInt = -5;
    address favoriteAdress = 0x75764372De3D7503A58920D34464bF0b7FD7E492; 
    bytes3 animal = "cat";


    struct People{
        uint256 age;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToAge;
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    // memory ve storage farkı; memory: yürütmeden sonra veriyi sil, storage: yürütmeden sonra veriyi tut
    function addPerson(string memory _name, uint256 _age)public{
        people.push(People(_age,_name));
        nameToAge[_name] = _age;
    }
}
