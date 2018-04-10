pragma solidity ^0.4.0;

contract Debugging {
    
    uint[] private vars;
    
    //debugging
    function assignment() {
        uint myValue = 1;
        uint myValu2 = 2;
        assert(myValue == myValu2);
    }
    
    
    //debug memory
    function memoryAlloc() {
        string memory myString = "test";
        assert(bytes(myString).length == 10);
    }
    
    //debug storage
    function storageAlloc() {
        vars.push(2);
        vars.push(3);
        assert(vars.length == 4);
    }
}