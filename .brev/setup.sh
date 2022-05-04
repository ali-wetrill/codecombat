#!/bin/bash

set -eu pipefail

####################################################################################
##### Brev.dev setup script. See docs for more: https://docs.brev.dev          #####
####################################################################################

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""

##### Node v14.x + npm #####
(echo ""; echo "##### Node v14.x + npm #####"; echo "";)

sudo apt install ca-certificates

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""


curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""


sudo apt-get install -y nodejs

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""

(echo ""; echo "##### Setup Deps #####"; echo "";)
npm install --also=dev

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""

npm run build

(echo ""; echo "##### PWD #####"; echo "";)
echo ""
pwd
echo ""