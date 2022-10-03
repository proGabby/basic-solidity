// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simple-storage.sol";

//the is keyword is to implement inheritance
contract ExtraStorage is SimpleStorage{


    function store(uint256 _favouriteNumber) public override{
        //the favoriteNumber is declare inside simpleStorage contract
        favoriteNumber = _favouriteNumber + 5;
    }
}