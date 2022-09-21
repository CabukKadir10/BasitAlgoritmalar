// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicBank {

    address public owner;
    mapping(address => uint) private balances;

    constructor () public payable{
        owner = msg.sender;
    }

    function IsOwner() public view returns(bool){
        return msg.sender == owner;
    }

     modifier onlyOwner(){
        require(IsOwner());
        _;
    }

    function Deposit() public payable{
        require(msg.value >= balances[msg.sender]);
        balances[msg.sender] += msg.value;
    }

    function WithDraw(uint withDrawAmount) public payable{
        require(withDrawAmount <= balances[msg.sender]);
        balances[msg.sender] -= withDrawAmount;
        payable(msg.sender).transfer(withDrawAmount);
    }

    function WithDrawAll() public onlyOwner{
        payable(msg.sender).transfer(address(this).balance);
        balances[msg.sender] -= balances[msg.sender];
    }

    function Getbalances() public view returns(uint){
        return balances[msg.sender];
    }
}
