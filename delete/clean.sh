#!/usr/bin/env bash

# Get the device IP
source ../.env

# Device to connect to
RASP_IP=$DEV_DEVICE_IP

# deploy empty compose to the device and remove all services
balena push $RASP_IP --debug --detached

# delete all containers and their volumes
echo "balena system prune --volumes -f;" | balena ssh $RASP_IP

# delete all images
echo "balena image prune -a -f;" | balena ssh $RASP_IP

# delete all networks
echo "balena network prune -f;" | balena ssh $RASP_IP
