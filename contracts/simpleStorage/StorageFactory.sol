// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// import the another contreact here
import "./SimpleStorage.sol";

// contract StorageFactory {
//     SimpleStorage public simpleStorage;

//     function createSimpleStorageContract() public {
//         simpleStorage = new SimpleStorage();
//     }
// }

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storageFactoryStoreFavouriteNumber(uint256 _indexOfSimpleStorage, uint256 _favouriteNumber) public {
        SimpleStorage simpleStorage = simpleStorageArray[_indexOfSimpleStorage];
        simpleStorage.storeFavouriteNumber(_favouriteNumber);
    }

    function getSimpleStorageFavouriteNumber(uint256 _indexOfSimpleStorage) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_indexOfSimpleStorage];
        return simpleStorage.getFavouriteNumber();
    }
}