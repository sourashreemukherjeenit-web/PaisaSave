# PaisaSave
enables users to securely store and manage funds with smart contracts
# 💰 Paisasave
<img width="1366" height="768" alt="Screenshot (132)" src="https://github.com/user-attachments/assets/38e11b47-def0-48d4-90f4-33fe9a6e2c5d" />

**Paisasave** is a beginner-friendly Ethereum smart contract that enables users to **securely store, manage, and withdraw their funds** using blockchain technology.  
It acts like a simple on-chain savings account — built with Solidity.

---

## 🚀 Features

- 🪙 **Deposit ETH** securely into the smart contract  
- 💸 **Withdraw funds** anytime (only your own balance)  
- 👁️ **Check your balance** instantly  
- 🔍 **View total funds** held by the contract  

---

## 🧱 Smart Contract Details

- **Contract Name:** `Paisasave`  
- **Language:** Solidity `^0.8.18`  
- **Deployed Address:** [`0xd1111CEeA9337ac4259DF5CDd8850B74808a610F`](https://etherscan.io/address/0xd1111CEeA9337ac4259DF5CDd8850B74808a610F)  
- **License:** MIT  

---

## 🧩 How It Works

Each user has their own balance stored in the contract’s mapping.  
- When you call `deposit()` and send ETH, it adds to your balance.  
- You can later call `withdraw(amount)` to transfer ETH back to your wallet.  
- Your funds are always safe and accessible only by you.

---

## 💻 Usage (via Remix IDE)

1. Go to [Remix Ethereum IDE](https://remix.ethereum.org)  
2. Create a new file named `Paisasave.sol`  
3. Paste the contract code from [`Paisasave.sol`](./Paisasave.sol)  
4. Compile the contract using Solidity version `0.8.18`  
5. Deploy it using the **Remix VM** or **Injected Provider (MetaMask)**  
6. Use the functions:
   - `deposit()` → Send ETH and store it  
   - `withdraw(amount)` → Withdraw from your balance  
   - `getBalance()` → Check your own balance  
   - `getContractBalance()` → View total funds in the contract  

---

## 🧠 Code Overview

```solidity
mapping(address => uint256) private balances;

function deposit() public payable { ... }

function withdraw(uint256 amount) public { ... }

function getBalance() public view returns (uint256) { ... }

function getContractBalance() public view returns (uint256) { ... }
