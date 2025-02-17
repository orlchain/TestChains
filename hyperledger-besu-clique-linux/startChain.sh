#!/bin/bash
rm -rf ./Clique-Network/Node-1/data/database 
rm -rf ./Clique-Network/Node-2/data/database 
rm -rf ./Clique-Network/Node-3/data/database 
x-terminal-emulator -e ./bin/./pantheon --data-path=./Clique-Network/Node-1/data --genesis-file=./cliqueGenesis.json --bootnodes --network-id 123 --rpc-http-enabled --rpc-http-api=ETH,NET,CLIQUE --host-whitelist=* --rpc-http-cors-origins="all"
sleep 3
x-terminal-emulator -e  ./bin/./pantheon --data-path=./Clique-Network/Node-2/data --genesis-file=./cliqueGenesis.json --bootnodes=enode://010a870e77a242da87419d2f3d7e305d32f20ec7e7c2d752350b83eb16a681c1319b669ceb3a04189d98aeebac373fe67b47ab9630e4a1e02e4cf29c072f7fda@127.0.0.1:30303 --network-id 123 --p2p-port=30304 --rpc-http-enabled --rpc-http-api=ETH,NET,CLIQUE --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8546
sleep 3
x-terminal-emulator -e ./bin/./pantheon --data-path=./Clique-Network/Node-3/data --genesis-file=./cliqueGenesis.json --bootnodes=enode://010a870e77a242da87419d2f3d7e305d32f20ec7e7c2d752350b83eb16a681c1319b669ceb3a04189d98aeebac373fe67b47ab9630e4a1e02e4cf29c072f7fda@127.0.0.1:30303 --network-id 123 --p2p-port=30305 --rpc-http-enabled --rpc-http-api=ETH,NET,CLIQUE --host-whitelist=* --rpc-http-cors-origins="all" --rpc-http-port=8547
