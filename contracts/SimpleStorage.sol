// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {

    // Creating struct class for people
    struct People {
        uint256 number ;
        string name;
    }

    // Creating a map and using it
    mapping(string => uint256) public hashMap;


    // creating an instance 
    People public person = People({number:2,name:"Salman"});

    // creating an array for persons
    People[] public persons ;

    uint256 public initialValue;

    //function for changing initialvalue
    function updateValue(uint256 value) public {
        initialValue = value;
    }

    //view or pure function which would not cost gas and is merely used for computation.
    function noGasFunction () public view returns (uint256) {
        return initialValue +1;
    }

    // function for adding people
    function addPeople (string memory name, uint256 number) public {
        persons.push(People(number,name));
        hashMap[name] = number;
    }



}