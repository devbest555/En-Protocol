// SPDX-License-Identifier: GPL-3.0



pragma solidity 0.6.12;

import "../../../utils/Proxy.sol";

/// @title ComptrollerProxy Contract
/// @notice A proxy contract for all ComptrollerProxy instances
contract ComptrollerProxy is Proxy {
    constructor(bytes memory _constructData, address _comptrollerLib)
        public
        Proxy(_constructData, _comptrollerLib)
    {}
}
