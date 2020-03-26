


Dado("esteja na tela para solicitar segunda via de boleto.") do
  boleto.load  
  find('#btnSegundaViaDocumentos')
  end
  
  Quando("eu preecher com dados validos.") do
    boleto.segunda_via_boleto
  end
  
  Entao("o sistema enviará a segunda via do  boleto no endereço de e-mail informado.") do
    expect(page).to have_content 'O acesso ao boleto solicitado foi enviado para seu email de cadastro'
  end