//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract MyContract{
    uint amount;
    uint value;
    
    constructor() {
            amount = 0; //amount collect on the contract in initial is 0
            value = 1000; // we set the contract value to some arbitray number, in this case it is 1000
    }

    function getAmount() public view returns(uint){
        return amount;
    }

    function getBalance() public view returns(uint){
        return value;
    }
    function send(uint newDeposit) public {
        value = value - newDeposit;
        amount = amount + newDeposit;
    }
}