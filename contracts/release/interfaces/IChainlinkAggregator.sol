// SPDX-License-Identifier: GPL-3.0



pragma solidity 0.6.12;

/// @title IChainlinkAggregator Interface
interface IChainlinkAggregator {
    function latestAnswer() external view returns (int256);

    function latestTimestamp() external view returns (uint256);
}
