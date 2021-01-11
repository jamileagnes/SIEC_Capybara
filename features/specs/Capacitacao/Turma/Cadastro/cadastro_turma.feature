#language: pt
     
     @cad_turma
    Funcionalidade: Cadastrar nova turma

        Cenario: cadastrar turma com sucesso
            Quando escolho a seção Portal UCS
            E escolho a subseção Capacitação
            E seleciono a opção Turma
            E clico botão Incluir
            E seleciono o Programa com PROGRAMA DE DESENVOLVIMENTO CULTURAL
            E seleciono a Versão com 2
            E seleciono o Módulo com CULTA BRASILEIRA
            E seleciono o Evento com EVENTO BRASIL
            E seleciono a Modalidade com EAD
            E preencho o Percentual de Frequência com "50"
            E seleciono Videoconferência com Sim
            E seleciono Tipo Fechada
            E seleciono para Situação Inscrições Abertas
            E seleciono para Inscrição Automática Não
            E preencho Nº de Vagas com "30"
            E clico em Grade da Turma
            E preencho a Data com "07/04/2020"
            E seleciono o Turno com NOTURNO
            E seleciono o Instrutor com ANDREA COSTA SOUZA
            E seleciono o Local com GEFIS
            E clico em Adicionar
            Então clico em Confirmar
            E valido a mensagem de inclusão com sucesso.
