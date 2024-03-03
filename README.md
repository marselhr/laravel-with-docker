<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Brief Description
Create an environment to learn how to build a containerized Laravel development environment using Docker.

You just need to clone this repo and run `docker compose up -d` to get everything.

## Requirements

- Docker
- NodeJS LTS ^18
- Shell (WSL2, MacOS, or Linux)

## Some of the services are
- laravel
- nginx
- pgsql (comming soon)
  

## Quick Start
Make sure your docker engine is running
- Clone project to local
  ```
  git clone https://github.com/marselhr/laravel-with-docker.git laravel/app
  ```
- Navigate project folder
  ```
  cd laravel/app
  ```
- set the execute permission for the `install.sh` file by default
  ```
  chmod +x ./install.sh
  ```
- Install dependencies
  ```
  ./install.sh -i
  ```
- Create app key
  ```
  docker exec app php artisan key:generate
  ```
- Access [localhost](http://localhost) and now you have the fresh laravel app
Thanks😊