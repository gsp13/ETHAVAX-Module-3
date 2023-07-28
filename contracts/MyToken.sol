// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DRACHMA is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("DRACHMA", "DRC") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function burnTokens(uint256 tokenAmount) public {
        require(balanceOf(msg.sender)>= tokenAmount,"You cannot burn the specified token amount given your account balance");
        _burn(msg.sender,tokenAmount);
    }
}