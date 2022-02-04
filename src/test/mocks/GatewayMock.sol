// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.9;

import "src/WormholeGUID.sol";

contract GatewayMock {
    function requestMint(WormholeGUID calldata, uint256, uint256) external returns (uint256 postFeeAmount) {}
    function settle(bytes32 sourceDomain, uint256 batchedDaiToFlush) external {}
}
