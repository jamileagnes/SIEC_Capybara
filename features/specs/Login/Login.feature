#language: pt-br



Funcionalidade: Realizar o login 
                Para que facilite a tomada de decisão na hora de utilizar o SpecFlow
                Eu, como usuário
                Desejo conhecer a documentação oficial. 
    @mytag
    Contexto: Realizar login
        Dado que eu navego pela url do sistema
        E fecho o acesso inicial
        Quando informo o usuario

        Cenario: com acesso válido
            E informo a senha valida
            E clico no botao entrar
            Então acesso deve ser realizado com sucesso
            
       
        Cenario: com acesso invalido
            E informo a senha incorreta
            E clico no botao entrar
            Então exibir mensagem de usuario e senha incorreto
       

            # Exemplos: 
            #     | usuario     | senha      |
            #     | "dservidor" | "dserve27" |
