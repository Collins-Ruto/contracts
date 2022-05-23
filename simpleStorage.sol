// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0 <0.9.0;

contract SimpleStorage {
    uint256 number;

    struct People {
        string name;
        uint256 number;
    }

    People[] public peopleArr;
    mapping(string => uint256) public nameToNum;

    function store(uint256 _number) public {
        number = _number;
    }

    function add_person(string memory _name, uint256 _number) public {
        peopleArr.push(People(_name, _number));
        nameToNum[_name] = _number;
    }

    function retrieve() public view returns(uint256){
        return number;
    }
}