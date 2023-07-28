// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DRACHMA is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("DRACHMA", "DRC") {
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * 10  ** decimals());
    }
    function burn(uint256 tokenAmount) override public {
        require(balanceOf(msg.sender)>= tokenAmount,"You cannot burn the specified token amount given your account balance");
        _burn(msg.sender,tokenAmount * 10  ** decimals());
    }
}
