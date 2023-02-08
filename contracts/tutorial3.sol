// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructAndArray {

    // declare a variable favorite number
    uint256 favouriteNumber;

    // structure variable
    // PeopleInformation public person = PeopleInformation({ favouriteNumber: 2, personName: "Sumit Kosta" });


    // create structure
    struct PeopleInformation {
        uint256 favouriteNumber;
        string personName;
    }

     // Arrays
    PeopleInformation[] public peopleInformation;


    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // PeopleInformation newPerson = PeopleInformation();
        // PeopleInformation memory newPerson = PeopleInformation({favouriteNumber: _favouriteNumber, personName: _name});
        PeopleInformation memory newPerson = PeopleInformation(_favouriteNumber, _name);
        peopleInformation.push(newPerson);
    }
}