// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage, SimpleStorage2 } from "./Simplestorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfsimpleStorage;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract  = new SimpleStorage();
        listOfsimpleStorage.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorgaeIndex, uint256 _newSimpleStorageNumber) public {
        

    }

}
