// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Zoo{

    mapping(uint => Animal) public animal;

    struct Animal{
        string name;
        string typeOfDiet;
        string grupName;
    }

    function addAnimal(
        uint _Id,
        string memory _name,
        string memory _typeOfDiet,
        string memory _grupname
        ) public {
            animal[_Id] = Animal(_name, _typeOfDiet, _grupname);
        }
}
