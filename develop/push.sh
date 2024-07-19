#!/usr/bin/env bash

# Get the device IP
source ../.env

# Device to connect to
RASP_IP=$DEV_DEVICE_IP

# deploy to the device
balena push $RASP_IP --debug
