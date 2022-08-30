// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./EasyStorage.sol";

contract EasyStorageLab{
    EasyStorage[] public easyStorageArray;

    function createEasyStorageContract() public {
        EasyStorage easyStorage = new EasyStorage();
        easyStorageArray.push(easyStorage);
    }

    function eslStore(uint256 _easyStorageIndex, uint256 _easyStorageNumber) public {
        // Must include Address and ABI (Application Binary Interface) here
        EasyStorage easyStorage = easyStorageArray[_easyStorageIndex];
        easyStorage.store(_easyStorageNumber);
    }

    function eslGet(uint256 _easyStorageIndex) public view returns(uint256){
        EasyStorage easyStorage = easyStorageArray[_easyStorageIndex];
        return easyStorage.retrieve();
    }

}
