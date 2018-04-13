pragma solidity ^0.4.0;

contract TimeBased {
    
    mapping(address => uint) public _blanceOf;
    mapping(address => uint) public _expiryOf;
    
    uint private leaseTime = 600;
    
    modifier expire(address _addr) {
        if (_expiryOf[_addr] >= block.timestamp) {
            _expiryOf[_addr] = 0;
            _blanceOf[_addr] = 0;
        }
        _;
    }
    
    
    function lease() public payable expire(msg.sender) returns (bool) {
        require(msg.value == 1 ether);
        require(_blanceOf[msg.sender] == 0);
        
        _blanceOf[msg.sender] = 1;
        _expiryOf[msg.sender] = block.timestamp + leaseTime;
        return true;
    }
    
    function balanceOf() public returns (uint) {
        return balanceOf(msg.sender);
    }
    
    function balanceOf(address _addr) public expire(_addr) returns (uint) {
        return _blanceOf[_addr];
    }
    
    function expiryOf() 
        public
        returns (uint) {
        return expiryOf(msg.sender);        
    }
    
    function expiryOf(address _addr) public expire(_addr) returns (uint) {
        return _expiryOf[_addr];
    }
}