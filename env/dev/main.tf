module "aws-dev" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-east-1"
    chave = "Iac-DEV"
    grupoDeSeguranca = "DEV"
    minimo = 0
    maximo = 1
    nomeGrupo = "DEV"
  
}

output "IP" {
  value = module.aws-dev.IP-Publico
}