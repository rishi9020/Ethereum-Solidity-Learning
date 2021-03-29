pragma solidity ^0.5.13;

contract SendAndRecieveMoney {
    uint256 public balanceRecieved;
    
    function recieverMoney() public payable {
        balanceRecieved += msg.value;
    }
    
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public {
        address payable tooo = msg.sender;
        tooo.transfer(this.getContractBalance());
    }
    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getContractBalance());
    }
}