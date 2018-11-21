const MockInitializable = artifacts.require( './MockInitializable.sol' );

module.exports = ( deployer, network ) => {

    deployer.deploy( MockInitializable );

};