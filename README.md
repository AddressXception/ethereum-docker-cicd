# ethereum-devops

Ethereum CI/CD Workflows

## Development Environment

To build locally you need all the things.  Instructions for Setting up a blockchain dev environment

1. if you are on windows, install the [Windows Subsystem for linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
	1. if on a mac, install homebrew
2. install [Visual Studio Code](https://code.visualstudio.com/)
3. [Node Version 8+](https://nodejs.org/en/)
4. [Node Package Manager](https://www.npmjs.com/get-npm)
    1. i use [Node Version Manager](https://github.com/creationix/nvm)
5. [Powershell 6.0.1](https://github.com/powershell/powershell#get-powershell)
6. [VSCode-solidty](https://github.com/juanfranblanco/vscode-solidity)
7. [Material Icon Theme](https://davidburela.wordpress.com/2016/11/18/configuring-visual-studio-code-for-ethereum-blockchain-development/)
8. [Truffle framework](https://truffleframework.com/truffle)
9. [Ganache](https://truffleframework.com/ganache)
10. optionally, install [Docker](https://docs.docker.com/install/)

## Build Locally

To build locally you need a complete dev environment set up.

1. Start [Ganache](https://truffleframework.com/ganache)
2. execute `npm install`
3. execute `truffle compile`
4. execute `truffle test`

## Build in docker

Execute one of the `docker-run-tests` scripts

1. execute `pwsh ./scripts/docker-run-tests.ps1`
2. alternatively, execute `./scripts/docker-run-tests.sh`

Docker will write out results to `build-results`