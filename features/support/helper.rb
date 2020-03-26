Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }


module PageObjects

    def login
        @login ||= Login.new         
    end

    def home
        @home ||= Home.new         
    end
   
    def boleto
        @boleto ||= Boleto.new
    end    

    def revenda
        @revenda ||= Revenda.new
    end    

end


# module Helper
#     def tirar_foto(nome_arquivo, resultado)
#       caminho_arquivo = "Reports/screenshots/test_#{resultado}"
#       foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
#       page.save_screenshot(foto)
#       embed(foto, 'image/png', 'Clique aqui')
#     end
#   end

