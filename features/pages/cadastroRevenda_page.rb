#encoding: utf-8

class Revenda < SitePrism::Page
    set_url '/login'

    #Formulário de Cadastro de Revenda 
    element :novocliente, 'body > div.master-wrapper-page > div.master-wrapper-content > div.master-column-wrapper > div > div > div.page-body > div > div.new-wrapper.register-block > div.title'
    element :cnpj, '#Cnpj'
    element :botaocontinuar, '#btnContinuarCadastro'
    element :razaosocial, '#RazaoSocial'
    element :fantasia, '#Fantasia'
    element :ins_estadual, '#InscricaoEstadual'
    element :email, '#Email'
    element :nome, '#DadosPrincipais_Nome'
    element :tel, '#DadosPrincipais_Telefone1'
    element :email_acesso, '#DadosPrincipais_EmailAcesso'
    element :senha, '#DadosPrincipais_Senha'
    element :conf_senha, '#DadosPrincipais_ConfirmeSuaSenha'
    element :cep, '#EnderecoFaturamento_ZipPostalCode'
    element :numero, '#EnderecoFaturamento_Number'
    element :conf_dados, '#ResumoSubmit'


        def cadastrar_revenda
           novocliente.click
           @cnpj = Faker::CNPJ.pretty
           cnpj.set @cnpj
           botaocontinuar.click
           sleep 1
           @razaosocial = Faker::Company.buzzword
           razaosocial.set @razaosocial
           @fantazia = Faker::Company.industry
           fantasia.set @fantazia
           @inscri = Faker::Number.number(digits: 12)
           ins_estadual.set @inscri
           @email = Faker::Internet.email
           email.set @email
           sleep 1
           botaocontinuar.click
           #pagina 2
           sleep 2
           @name = Faker::Name.name
           nome.set @name
           tel.set Faker::PhoneNumber.phone_number
           email_acesso.set @email
           @senha = Faker::Base.numerify('112419####')
           senha.set @senha
           sleep 1
           conf_senha.set @senha
           @cep = '07700000'
           cep.set @cep
           cep.native.send_keys :tab
           sleep 2
           numero.set Faker::Number.number(digits: 3)
           botaocontinuar.click
           sleep 2
           botaocontinuar.click
           sleep 2
           conf_dados.click 
           sleep 2

           
           
                     
        end
end   


