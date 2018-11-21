const MockInitializable = artifacts.require( 'MockInitializable' );

contract( 'MockInitializable', async accounts => {
    let instance;

    beforeEach( async () => {
        instance = await MockInitializable.deployed();

    } );

    it( 'should initialize properly', async () => {
        const subject = instance;

        const {
            logs
        } = await subject.initialize();

        const initialized = await subject.initialized.call();
        assert.equal( initialized, true, 'The contract was not initialized' );
    } )
} )