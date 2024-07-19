# PiShip

A tool to develop and push Docker containers on BalenaOS locally

## Balena OS

BalenaOS is a lightweight, open-source operating system designed to run containers on embedded devices. It is based on [Yocto](https://www.yoctoproject.org/) Linux and is designed to run on a variety of devices, including Raspberry Pi, Intel NUC, and Nvidia Jetson.

1. Install BalenaOS and Balena CLI

   - Download the appropriate image from the [BalenaOS](https://www.balena.io/os#download) website.

     - Start with a development image, and then move to a production image once you have everything working.

   - Follow the instructions to [flash and continue](https://os-docs.balena.io/Getting%20Started/raspberrypi3/#poking-around-balenaos) using your device.

   - Commands and details: [Balena Masterclasses](https://docs.balena.io/learn/more/masterclasses/masterclass-intro/)

2. Balena CLI

   - Install the [Balena CLI](https://docs.balena.io/reference/balena-cli/)

## How To

1. Add the BalenaOS device to the local network and get the IP address.

   ```bash
   # Clone the repo
   git clone https://github.com/J0hn-B/piship.git && cd piship
   ```

2. Update the .env file

   ```bash
   DEV_DEVICE_IP="your-device-ip"
   ```

- ## Push

  - Change to the develop directory

  ```bash
   # Will deploy the configuration of develop/docker-compose.yml
   cd develop && ./push.sh
  ```

- ## Delete

  - Change to the delete directory

  ```bash
   # Will delete the configuration of docker-compose.yml and clean up images, volumes and networks
   cd delete && ./clean.sh
  ```
