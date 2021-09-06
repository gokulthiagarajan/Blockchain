pragma solidity ^0.6.0;

contract WorkingWithVariables{
    uint public myUInt;
    
    function setMyUInt(uint _myUint) public{
        myUInt = _myUint;
    }
    
    address public myAddress;
    
    function setMyAddress(address _address) public{
        myAddress = _address;
    }
    
    function getBalance() public view returns(uint){
        return myAddress.balance;
    }
}
