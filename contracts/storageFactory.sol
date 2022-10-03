//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./simple-storage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

    //this function create a simplestorage contract
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
