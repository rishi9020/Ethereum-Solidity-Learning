pragma solidity ^0.5.13;

contract StartStopUpdateExample {
    address public ownerOfContract;
    uint256 public balanceOfContract;
    bool public paused;
    
    constructor() public {
        ownerOfContract = msg.sender;
    }
    
    function recieverMoney() public payable {
        balanceOfContract += msg.value;
    }
    
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function pauseContract() public {
        require(msg.sender == ownerOfContract, "User not authorised");
        paused = true;
    }
    
    function playContract() public {
        require(msg.sender == ownerOfContract, "User not authorised");
        paused = false;
    }
    
     function withdrawAllMoney(address payable _too) public {
        require(msg.sender == ownerOfContract, "User not authorised");
        require(!paused, "Contract is in paused state");
        _too.transfer(address(this).balance);
    }
    
    function destroyContract(address payable _too) public {
        require(msg.sender == ownerOfContract, "User not authorised");
        require(!paused, "Contract is in paused state");
        selfdestruct(_too);
    }
    
    
}