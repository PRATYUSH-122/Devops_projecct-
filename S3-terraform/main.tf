# 1.connect to ubuntu image and put aws_credentials 
# 2.mkdir learn-terraform-docker-container
# 3.cd learn-terraform-docker-container
# 4.touch main.tf
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tiktok"
  ports {
    internal = 80
    external = 9000
  }
}
