// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @title Paisasave - A simple smart contract wallet for saving funds securely
/// @author 
/// @notice This contract lets users deposit, withdraw, and view their own balance
contract Paisasave {
    // Mapping to store each user's balance
    mapping(address => uint256) private balances;

    /// @notice Deposit Ether into your Paisasave account
    /// @dev msg.value is the amount of Ether sent with the transaction
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balances[msg.sender] += msg.value;
    }

    /// @notice Withdraw Ether from your Paisasave account
    /// @param amount The amount (in wei) to withdraw
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    /// @notice View your Paisasave balance
    /// @return The current balance (in wei) of the caller
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    /// @notice View the contract's total balance (for transparency)
    /// @return The total amount of Ether held by the contract
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

