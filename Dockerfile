# Dockerfile

# Script       : CamHacker
# Author       : ZIHAD HOSSAIN RAFI
# Github       : https://github.com/MR-ZIHAD
# Messenger    : https://m.me/zihad.hossain36
# Email        : hossainzihad36@gmail.com
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/MR-ZIHAD/CamHacker"

# Working directory
WORKDIR /CamHacker/
# Add files 
ADD . /CamHacker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

 