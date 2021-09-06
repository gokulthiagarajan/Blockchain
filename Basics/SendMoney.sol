pragma solidity ^0.8.7;

contract SendMoneyContract{
    uint public balanceReceived;
    
    function receiveMoney() public payable{
        balanceReceived += msg.value;
    }
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    function withDrawMoney() public {
        address payable to = payable(msg.sender);
        to.transfer(this.getBalance());
        
        //balanceReceived -= msg.value;
    }
}
