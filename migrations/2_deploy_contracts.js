const EthSwap = artifacts.require("EthSwap");

module.exports = function(deployer) {
    await deployer.deploy(EthSwap, token.address);
};