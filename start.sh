#!/bin/bash

source .env

./terraform plan \
  -var "do_token=${DO_TOKEN}" \
  -var "atlas_token=${ATLAS_TOKEN}" \
  -var "org=${ORG}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=$SSH_FINGERPRINT" \
  ./cluster/do

./terraform apply \
  -var "do_token=${DO_TOKEN}" \
  -var "atlas_token=${ATLAS_TOKEN}" \
  -var "org=${ORG}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=$SSH_FINGERPRINT" \
  ./cluster/do
