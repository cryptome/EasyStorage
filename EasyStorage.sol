// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

// This contract allows us to store a universal favorite number as well as favorite numbers for different people in both mappings and arrays
contract EasyStorage {
    
    // This gets automagically gets initilized to zero!
    uint256 faveNumber;

    // Mapping is similar to a OOP dictionary
    mapping(string => uint256) public nameToFaveNumber;

    struct People{
        uint256 faveNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _faveNumber) public {
        faveNumber = _faveNumber;    
    }    

    // view, pure
    function retrieve() public view returns(uint256){
        return faveNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _faveNumber) public{
        people.push(People(_faveNumber, _name));
        nameToFaveNumber[_name] = _faveNumber;
    }

}
