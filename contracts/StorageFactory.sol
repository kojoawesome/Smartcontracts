// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./Simplestorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfsimpleStorage;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract  = new SimpleStorage();
        listOfsimpleStorage.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorgaeIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfsimpleStorage[_simpleStorgaeIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorgaeIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfsimpleStorage[_simpleStorgaeIndex];
        return mySimpleStorage.retrieve();
    }

}
