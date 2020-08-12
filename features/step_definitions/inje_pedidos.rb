# Dado("que eu adicione o teste ao carrinho") do
#     login.load
#     login.logar
#     home.campobusca.set(produto)
#     home.botaobuscar.click
#     sleep 2

#   end
  
#   Quando("eu selecionar o produto {int} vezes") do |int|
#     find('#productQuantity145249').set 
#   end

#   Quando("condição de pagamento vista") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   Entao("entao pedido é gerado e eu poderei ver o número de pedido salvo") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end

Dado("que eu adicione o {string} ao carrinho") do |produto|
        login.load
        login.logar
        home.campobusca.set(produto)
        home.botaobuscar.click
        sleep 2
  end
  
  Quando("eu selecionar o produto {int} vezes") do |qnt|
    find('#productQuantity145249').set(qnt)
    sleep 2
    find(:button, "Adicionar ao carrinho").click
    sleep 1
    find('input[class="button-1 productAddedToCartWindowCheckout"]')
    @valor=find(:css, '#shopping-cart-form > div.table-wrapper > table > tbody > tr > td.subtotal.footable-last-column > span')
    

  end
  
  Quando("condição de pagamento {string}") do |cond_pagamento|
    find('#checkout').click
    find('#vendaconsumo').click
    find(cond_pagamento).click
     
    
  end
  
  Entao("entao pedido é gerado e eu poderei ver o número de pedido salvo") do
    pending # Write code here that turns the phrase above into concrete actions
  end