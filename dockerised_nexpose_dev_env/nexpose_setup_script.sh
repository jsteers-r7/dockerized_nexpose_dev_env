#!/bin/bash
# Run inside container
set -x

# NOTE: Replace <your_username> with your actual host username
/Users/<your_username>/rapid7/nexpose-toolchain/bin/bootstrap.sh -ne -p /Users/nexpose_dev/rapid7

source /Users/<your_username>/rapid7/nexpose/src/environment.sh

cd /Users/<your_username>/rapid7/nexpose/src

sudo chown -R nexpose_dev:nexpose_dev ../deploy

ant compile deploy-nexpose-core-product

sudo ./run.sh nexpose-no-content

