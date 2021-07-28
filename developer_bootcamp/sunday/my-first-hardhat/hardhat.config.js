//this file contains all the configuration for your 
//hardhat project.

//Tells hardhat to use the ethers library, 
require("@nomiclabs/hardhat-ethers");
//as well as the dotenv library for loading 
//environment variables from a .env config file
require('dotenv').config()
 
/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  //Specifies the networks that can be used for when we deploy 
  //MFSC, in this case the default's set to Kovan testnet.
  defaultNetwork: "kovan",
    networks: {
        hardhat: {
            // // If you want to do some forking, uncomment this
            // forking: {
            //   url: MAINNET_RPC_URL
            // }
        },
        localhost: {
        },
        kovan: {
            url: process.env.KOVAN_RPC_URL,
            accounts: [process.env.PRIVATE_KEY],
            saveDeployments: true,
        }
    },
    //Specifies a solidity compiler version 
    //to use for compiling MFSC
  solidity: "0.7.3",
};
