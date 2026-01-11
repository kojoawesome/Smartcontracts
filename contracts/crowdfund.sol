// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crowdfund{

    address public owner;
    mapping (address => uint256) public balances; 

    constructor (){
        owner = msg.sender;
    }

    //Generic contract reciever
    receive() external payable { 
        balances[msg.sender] += msg.value;
    }

    //checks for accounts contributed
    function contribute () external payable {
         balances[msg.sender] += msg.value;
    }

    //Returns balance of contract
    function balance()public view returns (uint256){
       return address(this).balance;
    }

   //ownerModifier
   modifier onlyOwner{
    require(msg.sender == owner, "Sender is not Owner");
    _;
   }

   //Withdraw
   function withdrawal() public onlyOwner {
    (bool sent, ) = msg.sender.call{value: address(this).balance}("");
   }
}