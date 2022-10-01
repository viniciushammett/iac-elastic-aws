terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = var.regiao_aws
}

resource "aws_launch_template" "maquina" {
  image_id = "ami-08c40ec9ead489470"
  instance_type = var.instancia
  key_name = var.chave
    tags = {
    Name = "Ambiente Prod Elastico"
  }
  security_group_names = [ var.grupoDeSeguranca ]
}

resource "aws_key_pair" "chaveSSH" {
  key_name = var.chave
  public_key = file("${var.chave}.pub")
}

output "IP-Publico" {
  value = aws_instance.app_server.public_ip
  
}