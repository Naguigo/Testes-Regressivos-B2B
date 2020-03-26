


Dado("que acesse o formulário de cadastro no site.") do
    visit '/login' 
  end
  
  Quando("eu preencher todos os dados obrigatórios.") do
    revenda.load
    revenda.cadastrar_revenda
    # expect(page).to eql revenda.@cnpj
  end
  
  Entao("terei o cadastro concluido com sucesso.") do
    expect(page).to have_content 'Seu cadastro foi concluido com sucesso!'
  end