Dado("Dado que eu tenha finalizado uma compra e esteja na tela de pagamento") do
  find('#checkout').click
  sleep 1
  if page.has_css?('#Selecionavendarevenda', :visible => true)
    find("#Selecionavendarevenda").click
    sleep 2
    find("#vendaconsumo").click
    sleep 2   
    expect(page).to have_content 'PAGAMENTO'
    expect(page).to have_content CONFIG['produto1']
    find('#btnFinalizarPedido')
  elsif page.has_css?('#vendaconsumo', :visible => true)
    find("#vendaconsumo").click
    sleep 2   
    expect(page).to have_content 'PAGAMENTO'
    expect(page).to have_content CONFIG['produto1']
    find('#btnFinalizarPedido')
  end  

  
end

Quando("Quando eu selecionar uma forma de pagamento") do
  sleep(5)
  find('#VisibilidadeDepositoSND').click
  sleep(1)
  find('#btnFinalizarPedido').click
  sleep(3)
  expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
end

Entao("Entao a tela de conclusão aparecerá e um numero de Pedido será gerado") do
  #find('#btFechar').click
  expect(page).to have_content 'Obrigado, pedido finalizado com sucesso!'
  expect(page).to have_content 'Número Pedido:'
  expect(page).to have_content 'CONCLUSÃO'
  expect(page).to have_content CONFIG['produto1']
  find('input[value="Continue Comprando"]')
  expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
  #find('#bannerEbit')
    
end