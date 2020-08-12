#!/bin/bash

DIR="/usr/src/contracts"
if [ ! -d $DIR ];then
    cd /usr/src
    echo -e "\n===> creating a bare Truffle project\n"
    truffle init
    echo -e "\n===> installing @truffle/hdwallet-provider\n"
    npm init -y
    npm install @truffle/hdwallet-provider
fi
/bin/bash