# dockerproject
# WordPress, Nginx, MySQL, PHP Setup with Docker

This project contains the necessary configuration files to set up a local web environment running WordPress, Nginx, MySQL, and PHP-FPM using Docker.

## Contents

- **Dockerfile**: Builds a Docker image based on Ubuntu, installs the required packages, and sets up Nginx, PHP-FPM, and WordPress.
- **docker-compose.yaml**: Manages MySQL and WordPress services.
- **wptest.conf**: Nginx configuration file.
- **wp-setup.sh**: A bash script that downloads and configures WordPress.

## Requirements

- Docker and Docker Compose must be installed.
- Visual Studio Code (optional, can be used for code editing and Docker container management).
- To use your custom domain locally, add the following line to your `hosts` file:

  ```bash
  127.0.0.1 your-domain-name

## Step-by-Step Installation

1- Clone this repository to your local machine.
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```
2- Customize the configuration files as needed for your personal setup.
3- Build the Docker image.
```bash
docker build -t your-image-name .
```
4- Start the services with Docker Compose.
```bash
docker-compose up -d
```
After completing these steps, you should be able to access your WordPress site by navigating to "http://your-domain-name" in your browser.
