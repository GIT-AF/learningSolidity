pragma solidity ^0.4.0;

contract Transacation {
    
    event SenderLogger(address);
    event ValueLogger(uint);
    
    address private owner;
    
    modifier isOwner {
        require(msg.sender == owner);
        _;
    }
    
    modifier validValue {
        assert(msg.value >= 1);
        _;
    }
    
    function Transacation() {
        owner = msg.sender;
    }
    
    function Test() payable isOwner validValue {
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}