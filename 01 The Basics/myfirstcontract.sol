pragma solidity ^0.4.0;

contract MyFirstContract {
    string private name;
    uint private age;
    
    function setName(string newName) {
        name = newName;
    }
    
    function getName() returns (string) {
        return name;
    }
    
    function setAge(uint newAge) {
        age = newAge;
    }
    
    function getAge() returns (uint) {
        return age;
    }
}

contract MySecondContract {
    string private name;
    uint private age;
    
    function setName(string newName) {
        name = newName;
    }
    
    function setAge(uint newAge) {
        age = newAge;
    }
    
    function getName() returns(string) {
        return name;
    }
    
    function getAge() returns(uint) {
        return age;
    }
}