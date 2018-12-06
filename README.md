# MomoCoin (Ethereum Smart Contract)

## Project Description:

In this project, I did rather extensive research to learning on how to create and deploy a “MomoCoin” (contract) using the ERC-20 template for Ethereum in the Solidity language. Before starting this project, I knew nothing about solidity and I think one of the biggest challenges was the old and outdated documentation of the language, so when I compiled my code I would often run into many errors, and have to figure out how to perform a certain operation in the way the language currently operates. One documentation that I found useful that explains all the functions included within the IERC20.sol interface was found on this website: [Ethereum ERC-20 Template](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)

Most of the methods listed on here are rather self-explanatory on what they are supposed to do. Because of a lack of experience with the Solidity language, my goal was to develop a very simple coin that does not use any complicated puzzle algorithms or hashing algorithms, but can still function properly, and can be able to transfer “MomoCoin” from one address to another. 

When this coin is deployed, it is deployed to the Ethereum wallet, and you can watch it from there, send coins from one address to another, etc. 

## Running the Application

If you wish to run the code for yourself, first download MetaMask, an extension application for chrome, create an account, and switch the network from the Main Ethereum network to the Ropsten Test Network. Remember MetaMask MUST be running for you to even deploy a contract.

Then, find a button that says “Deposit.” This will take you to a place where you will see a something called “Test Faucet.” This is basically free, but fake, Ethereum. It costs Ethereum to be able to deploy contracts to the network. Then you can request 1 ether. Honestly, 1 ether should be more than enough for your needs.

Then, take the solidity files, and copy their contents. Then go to this website [Remix IDE](https://remix.ethereum.org) If you open

Then create files for each of these solidity files on the repository on this IDE and paste the contents to these files.
After on the Run tab, press Deploy. This will open up MetaMask automatically. It will ask to to confirm your payment for ether. Say confirm. 

Then go to this website: [Ethereum Wallet](https://wallet.ethereum.org/contracts)

Scroll down to Custom Tokens. Click on “+ Watch Token.” Enter in the token address. This is found on a website under the solidity code on the Remix IDE. This website will appear once the token is deployed although it will not be very visible. Once you enter in the token address, the other naming conventions: symbol, name, and decimals should automatically populate. 

Click on Submit and you have successfully created a token. You can transfer coins and send coins now with your token! If any questions arises, please feel free to contact me at moj10@pitt.edu
