#language:pt

Funcionalidade: Injeção de pedidos

@inje
Esquema do Cenário: Validar pedidos por formas de pagamentos

Dado que eu adicione o <produto> ao carrinho 
Quando eu selecionar o produto <qnt> vezes 
E  condição de pagamento <cond_pagamento>
Entao entao pedido é gerado e eu poderei ver o número de pedido salvo 


Exemplos:
|produto             | qnt                | cond_pagamento             |
| "XE501C13-AD1BR"   | 5                  | "#VisibilidadeDepositoSND" |  