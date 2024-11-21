// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage} from "Contracts/SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOFSimpleStorage;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOFSimpleStorage.push(simpleStorage);
    }

    function sfStore(uint256 _simplesStorageIndex, uint256 _newSimpleStorage) public {
        //ABI -> Application Binary Interfacec
        SimpleStorage mySimpleStorage = listOFSimpleStorage[_simplesStorageIndex];
        mySimpleStorage.store(_newSimpleStorage);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOFSimpleStorage[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}