#!/bin/sh

echo "ENTRYPOINT -> installing dependencies..." | tee -a /app/logs/entrypoint.log

npm install | tee -a /app/logs/entrypoint.log

echo "ENTRYPOINT -> compiling contracts..." | tee -a /app/logs/entrypoint.log
truffle compile | tee -a /app/logs/entrypoint.log

echo "ENTRYPOINT -> executing tests..." | tee -a /app/logs/entrypoint.log
truffle test --network ganache | tee -a /app/logs/entrypoint.log