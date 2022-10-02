module "aws-prod" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-east-1"
    chave = "Iac-PROD"
    grupoDeSeguranca = "Producao"
    minimo = 1
    maximo = 10
    nomeGrupo = "Prod"
}