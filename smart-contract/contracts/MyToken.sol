//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20{
    constructor() ERC20("MyToken", "MTK"){
        _mint(msg.sender, 1000000000*10**decimals());
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}