# Mount tool-chain
docker run -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/rapid7/nexpose-toolchain hackathon2k23:latest

# Run toolchain
/rapid7/nexpose-toolchain/bin/bootstrap.sh -ne -p /rapid7

# Mount toolchain and nexpose to Root
docker run -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/rapid7/nexpose-toolchain -v /Users/<your_username>/rapid7/nexpose:/rapid7/nexpose hackathon2k23:latest

# Pass command to image
docker run -d -v /Users/<your_username>/rapid7:/rapid7 hackathon2k23:latest sleep infinity

# Enter Bash
docker exec -it flamboyant_austin bash

# Mount toolchain and nexpose to User Directory
docker run -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/Users/nexpose_dev/rapid7/nexpose-toolchain -v /Users/jsteers/rapid7/nexpose:/Users/<your_username>/rapid7/nexpose hackathon2k23:latest

# Write all bootstrap logs to file
./bin/bootstrap.sh -ne -p /Users/nexpose_dev/rapid7/ &> logs_toolchain_${date}.txt

# Run toolchain
docker run -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/home/nexpose_dev/rapid7/nexpose-toolchain -v /Users/<your_username>/rapid7/nexpose:/Users/<your_username>/rapid7/nexpose hackathon2k23:latest

# Setup Toolchain
source ~/rapid7/nexpose/src/environment.sh

# Build nexpose
ant clean compile full-redeploy
```
BUILD FAILED
/home/nexpose_dev/rapid7/nexpose/src/build.xml:939: Unable to delete file /home/nexpose_dev/rapid7/nexpose/deploy/nse/scans/00000000/0000000000000001/4.1.ScanConfig.xml.gz

Total time: 18 minutes 22 seconds
```

# Set limit for container to 12GB with privileged access (it should be enough perms, see https://docs.docker.com/engine/reference/commandline/run/#:~:text=The%20%2D%2Dprivileged%20flag%20gives,like%20running%20Docker%20within%20Docker)
docker run --privileged -m=12g -d -v /Users/<your_username>/rapid7/nexpose-toolchain:/User/<your_username>/rapid7/nexpose-toolchain -v /Users/<your_username>/rapid7/nexpose:/Users/<your_username>/rapid7/nexpose hackathon2k23:latest


