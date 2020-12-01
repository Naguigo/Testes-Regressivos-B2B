Dado("que eu tenha me logado") do
  sleep 2
  if page.has_css?('label', :class => 'header-login-label', :visible => true)    
    expect(page).to have_text CONFIG['minha conta']      
    expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
  elsif page.has_css?('label', :class => 'header-login-label', :visible => false)
    find('#header-links-opener').click
    expect(page).to have_text CONFIG['minha conta'] 
    expect(page).to have_xpath("//img[@src='/Themes/Pavilion/Content/images/seloabcomn.png']")
  end       
end

Quando("eu clicar no campo busca e Digitar um produto") do
  if page.has_css?('div', :class=> 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto1'])
    find('input[class="button-1 search-box-button"]').click
  end  
end

Entao("o produto deve ser trazido a pagina pela busca") do
  find(CONFIG['id1']) 
  
end


Dado("que eu tenha feito uma busca de produto") do
  visit CONFIG['busca']
  find(CONFIG['id1']) 
end  

Quando("eu clicar no campo busca  e clicar na lupa") do
  if page.has_css?('div', :class => 'search-wrap', :visible => true)
    find('div[class="search-wrap"]').click  
    find('#small-searchterms').set(CONFIG['produto2']) 
    find('input[class="button-1 search-box-button"]').click    
  elsif page.has_css?('div', :class => 'search-wrap', :visible => false)
    find('#small-searchterms').set(CONFIG['produto2']) 
    find('input[class="button-1 search-box-button"]').click
  end  
end

Entao("o novo produto pesquisado deve ser trazido a pagina") do
  find(CONFIG['id2']) 
end
