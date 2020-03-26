class Home < SitePrism::Page
    #set_url '/login'


    #Formulário de login 
    
    element :campobusca, '#small-searchterms'
    element :campobuscamobile, 'div[class="search-wrap"]'
    element :botaobuscar, 'input[class="button-1 search-box-button"]'
    element :carrinho, 'a[href="/carrinho"]'

       
end    

