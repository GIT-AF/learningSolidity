pragma solidity ^0.4.0;

contract DataTypes {
    
    bool myBool = false;
    
    int8 myInt = 127;
    uint8 myUInt = 255;
    
    string myString;
    uint8[] myStringArr;
    
    byte myalue;
   // byte1 myBytes1;
    //byte332 myBytes32;
    
    enum Action {ADD, REMOVE, UPDATE}
    
    Action myAction = Action.ADD;
    
    address myAddress;
    
    function assignAddress() {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }
    
    uint[] myIntArr = [1, 2, 3];
    
    function arrFunc() {
        myIntArr.push(1);
        myIntArr.length;
        myIntArr[0];
    }
    
    uint[10] myFixedArr;
    
    struct Account {
        uint balance;
        uint dailyLimit;
    }
    
    Account myAccount;
    
    function structFunc() {
        myAccount.balance = 100;
    }
    
    mapping (address => Account) _accounts;
    
    function () payable {
        _accounts[msg.sender].balance = msg.value;
    }
    
    function getBalance() returns (uint) {
        return _accounts[msg.sender].balance;
    }
}