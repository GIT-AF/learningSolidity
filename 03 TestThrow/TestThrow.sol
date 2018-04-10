pragma solidity ^0.4.0;

contract TestThrow {
    
    function testAssert() {
        assert(2 == 1);
    }
    
    function testRequire() {
        require(2 == 1);
    }
    
    function testRevert() {
        revert();
    }
    
    function testThrow() {
        throw;
    }
}