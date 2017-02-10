#!/bin/bash

source .env

echo 

./packer validate -var 'do_api_token='$DO_TOKEN'' -var 'atlas_token='$ATLAS_TOKEN'' -var 'org='$ORG'' ./images/vanessa-apache-cluster-ubuntu-16LTS-master.json

./packer build -var 'do_api_token='$DO_TOKEN'' -var 'atlas_token='$ATLAS_TOKEN'' -var 'org='$ORG''  ./images/vanessa-apache-cluster-ubuntu-16LTS-master.json
