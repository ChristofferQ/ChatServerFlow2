#!/usr/bin/env bash

# Don't change this name UNLESS you know what you are doing
#NO Spaces allowed on either side of the '='

#SERVER_NAME below MUST mach the DIRECTORY created on your droplet in the /var folder
SERVER_NAME="chat-server"

DROPLET_URL="165.227.139.113"
# Change the root below to the non-root user you have setup:
DROPLET_USER="root"


echo "##############################"
echo "Building the Project          "
echo "##############################"

# If you have setup maven on your system, you can uncomment the line below
# this will compile your code, and copy the jar-file to the deploy folder

# mvn package


echo "##############################"
echo "Deploying The project..."
echo "##############################"

scp -r ./deploy/* $DROPLET_USER@$DROPLET_URL:/var/$SERVER_NAME
