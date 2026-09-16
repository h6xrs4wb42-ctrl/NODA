// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title NODA Token
/// @notice Fixed-supply ERC20 token.
/// @dev
/// - Total Supply: 21,000,000,000 NODA
/// - Decimals: 18
/// - Entire supply is minted once to the deployer.
/// - No public mint function.
/// - No owner or admin.
/// - No burn function.
/// - No blacklist.
/// - No pause.
/// - No tax or transfer fee.
/// - No upgradeability.
contract NODA is ERC20 {

    uint256 public constant INITIAL_SUPPLY =
        21_000_000_000 * 10 ** 18;

    constructor()
        ERC20("NODA", "NODA")
    {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
