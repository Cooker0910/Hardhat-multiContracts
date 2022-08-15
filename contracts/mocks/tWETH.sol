// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract tWETH is ERC20 {

    uint8 _decimals = 18;

    constructor() ERC20("Test WETH", "tWTH") {
    }

    function decimals() public view virtual override returns (uint8) {
        if (_decimals > 0) return _decimals;
        return 18;
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function approve(address reward, uint256 amount) public virtual override returns (bool) {
        _approve(reward, _msgSender(), amount);
        return true;
    }

}