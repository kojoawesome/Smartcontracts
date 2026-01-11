// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crowdfund{

    address public owner;
    mapping (address => uint256) public balances; 

    constructor (){
        owner = msg.sender;
    }

    receive() external payable { 
        balances[msg.sender] += msg.value;
    }

    function contribute () external payable {
         balances[msg.sender] += msg.value;
    }
}