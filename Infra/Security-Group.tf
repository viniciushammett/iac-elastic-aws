resource "aws_security_group" "acesso_geral" {
    name = "acesso_geral-2"
    description = "Prod Group"
    ingress{                          #EntradaConexao  
        cidr_blocks = [ "0.0.0.0/0" ] #Bloco IPV4
        ipv6_cidr_blocks = [ "::/0" ] #Bloco IPv6
        from_port = 0                 #LiberacaoPortaInicio  
        to_port = 0                   #LiberacaoPortaFim  
        protocol = "-1"               #libera todos os tipos de conexões
    }
    egress{                           #SaidaConexao      
        cidr_blocks = [ "0.0.0.0/0" ] #Bloco IPV4
        ipv6_cidr_blocks = [ "::/0" ] #Bloco IPv6
        from_port = 0                 #LiberacaoPortaInicio  
        to_port = 0                   #LiberacaoPortaFim  
        protocol = "-1"               #libera todos os tipos de conexões
    }
    tags = {
      name = "acesso_geral-2"
    } 
}