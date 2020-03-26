#language:pt

@regressao @logar
Funcionalidade: Login

@logout  @12
Cenário: Usuario autorizado
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan.gomes@snd.com.br" e "654321"
    Então devo ser autenticado com Sucesso "Minha Conta"


Cenario: Login com E-mail inválido
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan123gomes@snd.com.br" e "654321"
    Entao uma msg de erro será apresentada

@vai
Cenario: Login com Senha inválida
    Dado que eu acesse a pagina principal
    Quando eu faço login com "nathan.gomes@snd.com.br" e "132455"
    Entao uma msg de erro será apresentada    

#@login @logout
#Cenario: Alteração de Senha
 #   Dado que eu tenha feito login e esteja na tela de alteração de senha
   # Quando eu preencher os campos de senha antiga e senha nova e clicar em Alterar Senha 
  #  Entao a alteração da senha será feito com sucesso

@vai
Cenario: Recuperação de Senha
    Dado que eu tenha clicado em Esqueceu a Senha ? Na tela de Login
    Quando eu preencher com o e-mail e clicar em Recuperar
    Entao um e-mail deverá ser enviado com orientações para Recuperação da Senha