// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TutorialFourMapping {
    // Mapping is like a objects in javascript and disctionary in python.
    // Means, A combination of key,value pair

    struct PeopleInformation {
        uint256 favouriteNumber;
        string personName;
    }

    // List of persons
    PeopleInformation[] public peopleInformation;

    // Create Map here
    mapping(string => uint256) public getPersonFavouriteNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        PeopleInformation memory person = PeopleInformation({favouriteNumber: _favouriteNumber, personName: _name});
        peopleInformation.push(person);
        getPersonFavouriteNumber[_name] = _favouriteNumber;
    }
}