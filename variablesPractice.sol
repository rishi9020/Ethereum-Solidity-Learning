pragma solidity ^0.8.0;

contract WorkingWithVarialbles {
    uint256 public num1;
    
    function setMyUInt(uint _num2) public {
        num1 = _num2;
    }
    
    bool public myBool;
    
    function setMyBool(bool _myBool2) public {
        myBool = _myBool2;
    }
    
    uint8 public num3 = 1;
    
    function increment() public {
        num3++;
    }
    
    function decrement() public {
        num3--;
    }
    
    address public myAddress1;
    
    function setAddress(address _myAddress2) public {
        myAddress1 = _myAddress2;
    }
    
    function getBal() public view returns(uint) {
        return myAddress1.balance;
    }
    
    string public myString = "HelloRishi";
    
    function setMyString(string memory _myString2) public {
        myString = _myString2;
    }

}