

Dado("que eu busque por um {string}") do |produto|
    login.load
    login.logar
    home.campobusca.set(produto)
    home.botaobuscar.click
    sleep 2


  end
  
  Quando("eu selecionar o produto pela {string}") do |descriçao|
    find('a', :text => descriçao).click
    
    sleep 7
  end
  
  Entao("poderei ver as Categorias {string} e {string}") do |cat_pai, cat_filho|
    # page.has_css?('body > div.master-wrapper-page > div.master-wrapper-content > div.breadcrumb > ul > li:nth-child(2) > span:nth-child(1) > a > span', :text => cat_pai, :visible => true)
    # page.has_css?('body > div.master-wrapper-page > div.master-wrapper-content > div.breadcrumb > ul > li:nth-child(3) > span:nth-child(1) > a > span', :text => cat_filho, :visible => true)
    find('span[itemprop="title"]', :text => cat_pai)
  end
