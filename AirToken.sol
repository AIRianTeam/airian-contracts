// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin-5/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin-5/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract AirToken is ERC20, ERC20Permit {
    constructor() ERC20("AIR Token", "AIR") ERC20Permit("AIR Token") {
        _mint(msg.sender, 1_000_000_000 * (10 ** 18));
    }
}