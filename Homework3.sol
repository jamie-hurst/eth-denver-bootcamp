// SPDX-License-Identifier: None

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