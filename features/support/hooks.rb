
#realiza login
Before('@login') do
  #Elementos mapeados no "Login_pages.rb"
  #@login = Login.new #estanciando a class "Login" que esta no arquivo pages
  login.load
  sleep 3
  login.wait_until_email_visible
  login.email.set(CONFIG['user'])
  login.password.set(CONFIG['senha'])
  login.fazerlogin.click
  sleep 3
end


#login + add produto ao carrinho
Before('@loginaddcarrinho')  do 
  login.load
  login.logar
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    home.campobuscamobile.click
    home.campobusca.set(CONFIG['produto1'])
    home.botaobuscar.click    
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    home.wait_until_campobusca_visible  
    home.campobusca.set(CONFIG['produto1'])       
    home.botaobuscar.click
  end 
  sleep(8)
  #binding.pry
  #find(CONFIG['id1']).all('button[title="Adicionar ao carrinho"]')[1].click
  find(CONFIG['id1']).first('button[title="Adicionar ao carrinho"]').click
  sleep 3
  visit '/carrinho'
end




#logout simples
After('@logout') do
  
  visit '/logout'

end  

#metodo para limpar carrinho de compras
After('@limpacarrinho') do
  
    
          visit '/carrinho'
          todos_itens = all(".remove-from-cart input[type=checkbox]")
          todos_itens.each { |item| item.click }
          find('input[value="Atualizar carrinho de compras"]').click        
          visit '/logout'
      
end    


# After do |scenario|
#    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')   
#       if scenario.failed?
#         tirar_foto(scenario_name.downcase!, 'falhou')
#       else
#         tirar_foto(scenario_name.downcase!, 'passou')
#       end
# end
    


After do
  temp_shot = page.save_screenshot("reports/temp_shot.png")
  shot = Base64.encode64(File.open(temp_shot, "rb").read)
  embed(shot, "image/png", "Clique Aqui")

end  

