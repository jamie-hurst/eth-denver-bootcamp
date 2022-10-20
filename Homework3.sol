// SPDX-License-Identifier: None

// Homework 3

// 1. Add a variable to hold the address of the deployer of the contract
// 2. Update that variable with the deployer's address when the contract is deployed.

// 3. Write an external function to return
//    1. Address 0x000000000000000000000000000000000000dEaD if called by the deplover
//    2. The deployer's address otherwise


pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;

    address public owner;
    address public deadWallet;

    constructor() {
        owner = msg.sender;
        deadWallet = 0x000000000000000000000000000000000000dEaD;
    }

    function getOwnerAddres () external view returns (address) {
        if (msg.sender == owner) {
            return deadWallet;
        } else {
            return msg.sender;
        }
    }


    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }
}
