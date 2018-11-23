pragma solidity ^0.4.24;

/**
* @title Initializable
* @dev contract can be initialized by calling a specific function.
*/
contract Initializable {
    /**
    * @dev Indicates if the contract has been initialized.
    */
    bool public initialized;

    /**
    * @dev Modifier to use in the initialization function of a contract.
    */
    modifier isInitializer() {
        require(!initialized, "Contract instance has already been initialized");
        _;
        initialized = true;
    }

    /**
    * @dev Modifier to execute only if contract is initialized
    */
    modifier isInitialized() {
        require(initialized, "contract instance must be initialized");
        _;
    }
}