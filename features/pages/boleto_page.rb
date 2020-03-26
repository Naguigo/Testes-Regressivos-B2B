class Boleto < SitePrism::Page
    set_url '/Customer/Servicos'
    

    #Formulário de 2° via de Boleto 
    element :segundaviadocs, '#btnSegundaViaDocumentos'
    element :cpf_cnpj, '#documents-cpfcnpj'
    element :nota_fiscal, '#documents-notafiscal'
    element :email, '#documents-email'
    element :enviar, '#documentos-dados-pedido-next'

        def segunda_via_boleto
           segundaviadocs.click
           sleep 1
           cpf_cnpj.set CONFIG['cpf_boleto']
           nota_fiscal.set CONFIG['nota_fiscal']                        
           email.set CONFIG['user']
           sleep 1
           enviar.click

        end
end    