

Dado("que eu tenha escolhido um produto") do
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  end   
  find(CONFIG['id1'])
  sleep 3
end

Quando("eu e clicar no botao Adicionar ao Carrinho") do
    #find(CONFIG['id1']).all('button[title="Adicionar ao carrinho"]')[1].click
    find(CONFIG['id1']).first(:button, "Adicionar ao carrinho").click
    sleep 3
end

Entao("um popup deverá ser apresentado com a msg de produto adicionado") do
  expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
  expect(page).to have_content CONFIG['produto1']
  find('a[class="continueShoppingLink"]')
  find('input[class="button-1 productAddedToCartWindowCheckout"]')

end

Dado("que eu tenha clicado no botao Adicionar ao Carrinho") do
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  end   
  find(CONFIG['id1'])
  #find(CONFIG['id1']).all('button[title="Adicionar ao carrinho"]')[1].click
  find(CONFIG['id1']).first('button[title="Adicionar ao carrinho"]').click
  sleep 3
  expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
  expect(page).to have_content CONFIG['produto1']
  find('a[class="continueShoppingLink"]')
  find('input[class="button-1 productAddedToCartWindowCheckout"]')
end

Quando("eu clicar no botão Continuar Comprando no popup") do
  find('a[class="continueShoppingLink"]').click
  sleep 1
end

Entao("o popup se fechará e poderei continuar navendo pela site") do
  sleep 2
  if page.has_css?('label', :class => 'header-login-label', :visible => true)    
    expect(page).to have_text 'Minha Conta'      
    expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
  elsif page.has_css?('label', :class => 'header-login-label', :visible => false)
    find('#header-links-opener').click
    expect(page).to have_text CONFIG['minha conta']
  
     expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
   end
end


####
Dado("que eu já tenha adiciona um Produto ao carrinho de Compras") do
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  end   
  find(CONFIG['id1'])
  #find(CONFIG['id1']).all('button[title="Adicionar ao carrinho"]')[1].click
  find(CONFIG['id1']).first('button[title="Adicionar ao carrinho"]').click
  sleep 3
  expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
  expect(page).to have_content CONFIG['produto1']
  find('a[class="continueShoppingLink"]').click
  sleep 1
end

Quando("eu escolher outro produto e clicar no botão Adicionar ao carrinho") do
  sleep 3
  visit CONFIG['url_padrao']
  #visit 'https://www.snd.com.br/'
  if page.has_css?('label', :class => 'header-login-label', :visible => true)    
    expect(page).to have_text 'Minha Conta'      
    expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
  elsif page.has_css?('label', :class => 'header-login-label', :visible => false)
    find('#header-links-opener').click
    expect(page).to have_text CONFIG['minha conta']
  
    expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
   end
   if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto2'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto2'])
    find('input[class="button-1 search-box-button"]').click
  end   
  sleep 3
  find(CONFIG['id2']).find('button[title="Adicionar ao carrinho"]').click
  sleep 1
end

Entao("um popup deverá ser apresentado com a msg do outro produto adicionado") do
  expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
  expect(page).to have_content CONFIG['produto2']
  find('a[class="continueShoppingLink"]')
  find('input[class="button-1 productAddedToCartWindowCheckout"]')
  sleep 1
end

Dado("que eu tenha clicado em adicionar ao Carrinho") do
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  end   
  #find(CONFIG['id1']).all('button[title="Adicionar ao carrinho"]')[1].click
  find(CONFIG['id1']).first('button[title="Adicionar ao carrinho"]').click
  sleep 2
 
end

Quando("eu clicar no botão Ver Meu Carrinho no popup") do
  expect(page).to have_content 'ADICIONADO AO SEU CARRINHO' 
  expect(page).to have_content CONFIG['produto1']
  find('a[class="continueShoppingLink"]')
  find('input[class="button-1 productAddedToCartWindowCheckout"]').click
  sleep 2
end

Entao("a pagina de Carrinho será apresentada com todos os produtos adicionados.") do
  expect(page).to have_content 'CARRINHO'
  expect(page).to have_content CONFIG['produto1']
  find('#startproposal')
  find('#checkout')
end


Quando("eu clicar no Botão Carrinho no canto superior direito da Tela") do
  sleep 2
  find('a[class="continueShoppingLink"]').click
  visit CONFIG['url_padrao']
  #visit 'https://www.snd.com.br/'
  if page.has_css?('div', :class=> 'shopping-cart-link', :visible => true)
    find('div[class="shopping-cart-link"]').click
    find('input[value="Ver meu carrinho"]').click
  elsif page.has_css?('div', :class => 'shopping-cart-link', :visible => false)
    find('a[class="cart-trigger"]').hover
    find('input[value="Ver meu carrinho"]').click
  end     
  sleep 2
end

Dado("que eu esteja na tela de carrinho e clique Salvar como Proposta") do
  expect(page).to have_content 'CARRINHO'
  expect(page).to have_content CONFIG['produto1']
  find('#startproposal').click
  sleep 2
end

  
Quando("eu preencher os campos e clicar em salvar") do
  find('#Nickname').set('Fulano')
  find('#Email').set('teste@teste123.com.br')
  find('#StateId').find("option[value='9']").click
  sleep 3
  find('input[name="save"]').click
  sleep 3
end

Entao("a proposta será apresentada com algumas opçoes de envio por e-mail, clonar, transformar em carrinho, Cancelar e Editar") do
  expect(page).to have_content 'Fulano'
  expect(page).to have_content 'teste@teste123.com.br'
  expect(page).to have_content CONFIG['produto1']

end

Dado("que eu esteja na tela de carrinho") do
  expect(page).to have_content 'CARRINHO'
  expect(page).to have_content CONFIG['produto1']
  sleep 2
end

Quando("eu clicar em Finalizar a Compra") do
  find('#checkout').click
  sleep 1
end

Entao("um popup deverá ser apresentado com as opções de Uso o Consumo ou Faturar para meu Cliente") do
  if page.has_css?('#Selecionavendarevenda', :visible => true)
    expect(page).to have_content 'Fature para minha empresa'
    sleep 2
    expect(page).to have_content 'Fature para meu cliente'
    find('#cpfcnpj')
    find('#buttonContinuarVendaComissionada')
  elsif page.has_css?('#Selecionavendarevenda', :visible => false)
    expect(page).to have_content 'Uso o consumo'
    find('#vendaconsumo')
    expect(page).to have_content 'Fature para meu cliente'
    find('#cpfcnpj')
    find('#buttonContinuarVendaComissionada')
  end  
  
end

Quando("eu finalizar a compra e clicar em Uso o Consumo") do
  find('#checkout').click
  sleep 1
  #binding.pry
  if page.has_css?('#Selecionavendarevenda', :visible => true)
    find('#Selecionavendarevenda').click
    sleep 2
    find('#vendaconsumo').click
    sleep 2
  elsif page.has_css?('#vendaconsumo', :visible => true)
    find('#vendaconsumo').click
    sleep 2
    expect(page).to have_content 'PAGAMENTO'
    sleep 2
  end  
end



Entao("a pagina para pagamento deverá ser apresentada") do
  expect(page).to have_content 'PAGAMENTO'
  expect(page).to have_content CONFIG['produto1']
  find('#btnFinalizarPedido')
end

Quando("eu finalizar a compra e inserir o CNPJ do cliente cadastrado e clique em Faturar para meu Cliente") do
  find('#checkout').click
  sleep 1
  find('#cpfcnpj').set('59.894.792/0001-38') #cnpj cadastrado para teste de automação (senha "111111")
  click_button(id: 'buttonContinuarVendaComissionada')
  sleep 3
end

Quando("eu finalizar a compra e inserir o CNPJ do cliente não cadastrado e clique em Faturar para meu Cliente") do
  find('#checkout').click
  find('#cpfcnpj').set('84.415.136/0001-52') #cnpj gerado mais nao cadastrado
  click_button(id: 'buttonContinuarVendaComissionada')
  sleep 3                           
end
 
Entao("aparerá um formulario para cadastro do CNPJ do cliente digitado") do
  find('div[class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front"]')
  expect(page).to have_content 'INFORMAÇÕES CADASTRAIS'
  expect(page).to have_content 'ENDEREÇO DE ENTREGA'
end




Dado("que eu tenha um novo cliente") do
  expect(page).to have_content 'CARRINHO'
  expect(page).to have_content CONFIG['produto1']
  sleep 2

 

end

Quando("eu faturar no carrinho de compras para este CNPJ") do
  find('#checkout').click
  sleep 1
  find('#cpfcnpj').set @cnpj                #('59.894.792/0001-38') #cnpj cadastrado para teste de automação (senha "111111")
  click_button(id: 'buttonContinuarVendaComissionada')
  sleep 3
end

Entao("nas opções de pagamento terá uma opção para verificar saldo SND Pay") do
  pending # Write code here that turns the phrase above into concrete actions
end