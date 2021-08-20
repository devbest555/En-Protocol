// SPDX-License-Identifier: GPL-3.0



pragma solidity 0.6.12;

import "../utils/SwapperBase.sol";

contract MockGenericIntegratee is SwapperBase {
    function swap(
        address[] calldata _assetsToIntegratee,
        uint256[] calldata _assetsToIntegrateeAmounts,
        address[] calldata _assetsFromIntegratee,
        uint256[] calldata _assetsFromIntegrateeAmounts
    ) external payable {
        __swap(
            msg.sender,
            _assetsToIntegratee,
            _assetsToIntegrateeAmounts,
            _assetsFromIntegratee,
            _assetsFromIntegrateeAmounts
        );
    }

    function swapOnBehalf(
        address payable _trader,
        address[] calldata _assetsToIntegratee,
        uint256[] calldata _assetsToIntegrateeAmounts,
        address[] calldata _assetsFromIntegratee,
        uint256[] calldata _assetsFromIntegrateeAmounts
    ) external payable {
        __swap(
            _trader,
            _assetsToIntegratee,
            _assetsToIntegrateeAmounts,
            _assetsFromIntegratee,
            _assetsFromIntegrateeAmounts
        );
    }
}
