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

resource "aws_instance" "app_server" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = var.instancia
  key_name = var.chave
  vpc_security_group_ids = [aws_security_group.acesso_geral.id]
    tags = {
    Name = "Ambiente Prod"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name = var.chave
  public_key = file("${var.chave}.pub")
}

output "IP-Publico" {
  value = aws_instance.app_server.public_ip
  
}