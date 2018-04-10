pragma solidity ^0.4.0;

import "browser/String.sol";

contract TestStrings {
    
    using Strings for string;
    
    function testConcat(string _base, string _value) returns (string) {
        return _base.concat(_value);
    }
    
    function needleInHaystack(string _base, _strings) returns (int) {
        return _base.strpos(_strings);
    }
}