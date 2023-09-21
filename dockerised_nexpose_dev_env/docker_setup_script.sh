#!/bin/bash
# Run outside container

cd ~/rapid7/hackaton/dockerised_nexpose_dev_env
docker build . -t nexpose_dev_env_container

# NOTE: Replace <your_username> with your actual username
container_id=$(docker run --privileged -m=12g -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/Users/<your_username>/rapid7/nexpose-toolchain -v /Users/<your_username>/rapid7/nexpose:/Users/<your_username>/rapid7/nexpose nexpose_dev_env_container:latest)

docker exec --privileged -it ${container_id} /nexpose_setup_script.sh

