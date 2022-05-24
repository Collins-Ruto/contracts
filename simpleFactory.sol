// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0 <0.9.0;

import "./simpleStorage.sol";

contract SimpleFactory is SimpleStorage {  //inheritance

    SimpleStorage[] public simplestorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simplestorage = new SimpleStorage();
        simplestorageArray.push(simplestorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNum) public {
        SimpleStorage(address(simplestorageArray[_simpleStorageIndex])).store(_simpleStorageNum);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return SimpleStorage(address(simplestorageArray[_simpleStorageIndex])).retrieve();
    }
}
