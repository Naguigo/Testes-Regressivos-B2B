#language:pt

Funcionalidade: categorização

@recat
Esquema do Cenário: Validar recategorização

Dado que eu busque por um <produto>
Quando eu selecionar o produto pela <descriçao>
Entao poderei ver as Categorias <cat_pai> e <cat_filho>


Exemplos:
| produto                | descriçao         |      cat_pai        | cat_filho       |
|"GA-H110M-S2V DDR4"|"MOTHERBOARD GIGABYTE PARA INTEL - H110 - GA-H110M-S2V DDR4"|"Componentes"|"Placa Mãe /Motherboard"|
|"MOUSE ZOWIE EC2-B"|"MOUSE ZOWIE EC2-B USB PRETO"|"PC Gamer"|"Mouse e Teclado Gamer"|
|"TUF B360M-PLUS GAMBR"|"MOTHERBOARD ASUS INTEL 8ª GERAÇÃO - TUF B360M-PLUS GAMING/BR"|"Componentes"|"Placa Mãe /Motherboard"|
|"MOUSE S2 DIVINA AZ"|"MOUSE S2 DIVINA BLUE"|"PC Gamer"|"Mouse e Teclado Gamer"|
|"DGS-1210-10P"|"SWITCH D-LINK WEB SMART 8 PORTAS 10/100/1000MBPS POE + 2 PORTAS SFP 100/1000MBPS 65 WATTS - DGS-1210-10P"|"Games"|"Legado"|


