# ETHAVAX-Module-3

## Description

Standard ERC 20 Contract with mint and burn functionality

**Name:** DRACHMA 

**SYMBOL:** DRC

### Prerequisites
* local HardHat installation
* Remix IDE

## How to run
* Compile the contract on Remix IDE
* In local terminal, run the command
  ```
  npx hardhat node
  ```
* Return to Remix IDE.In the deploy tab,change the environment to Dev Hardhat Provider.
* Once program is deployed you may now use the following functionalities
  
### Mint Function
```
Example Input:
   to:0x90F79bf6EB2c4f870365E785982E1f101E93b906
   _tokenAmount: 500
```
Creates a number  of tokens and assigns them to the specified address.

### Burn Function
```
Example Input:
   _tokenAmount: 200
```
Destroys the specified amount of tokens from the account deploying the contract, by transferring it to the zero address.
