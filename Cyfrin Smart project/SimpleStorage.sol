// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //solidity version

contract SimpleStorage {

    uint256 myFavoriteNumber; // 0

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array
    Person[] public listofpeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofpeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}