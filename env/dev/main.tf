module "aws-dev" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-east-1"
    chave = "Iac-DEV"
  
}

output "IP" {
  value = module.aws-dev.IP-Publico
}