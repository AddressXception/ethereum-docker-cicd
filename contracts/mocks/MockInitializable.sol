pragma solidity ^0.4.24;

import "../Initializable.sol";

/**
* @title Empty Contract
* @dev  a generic contract that can represent any Destructible contract with a payable fallback function
*/
contract MockInitializable is Initializable {

    event OnConstructed(address contractAddress);
    event OnFallbackCalled(address contractAddress);
    event OnMockInitialized(address contractAddress);

    constructor() public payable {
        emit OnConstructed(address(this));
    }

    function () external payable {
        emit OnFallbackCalled(address(this));
    }

    function initialize() external isInitializer {
        emit OnMockInitialized(address(this));
    }
}