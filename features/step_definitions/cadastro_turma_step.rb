Quando("escolho a seção Portal UCS") do
  click_link "Portal UCS"
  sleep 4
end

Quando("escolho a subseção Capacitação") do
  click_link "Capacitação"
  sleep 4
end

Quando("seleciono a opção Turma") do
  click_link "Turma"
  sleep 4
end

Quando("clico botão Incluir") do
  click_button "Incluir"
  sleep 4
end

Quando("seleciono o Programa com PROGRAMA DE DESENVOLVIMENTO CULTURAL") do
  select("Programa com PROGRAMA DE DESENVOLVIMENTO CULTURAL", from: "selectPrograma")
  sleep 4
end

Quando("seleciono a Versão com 2") do
  select("2", from: "selectVersao")
  sleep 4
end

Quando("seleciono o Módulo com CULTA BRASILEIRA") do
  select("CULTA BRASILEIRA", from: "selectModulo")
  sleep 4
end

Quando("seleciono o Evento com EVENTO BRASIL") do
  select("EVENTO BRASIL", from: "selectEvento")
  sleep 4
end

Quando("seleciono a Modalidade com EAD") do
  select("EAD", from: "modalidadeId")
  sleep 4
end

Quando("preencho o Percentual de Frequência com 50") do
  select("50", from: "txtPercentualFrequencia")
  sleep 4
end

Quando("seleciono Videoconferência com Sim") do
  select("Sim", from: "txtVideoconferencia")
  sleep 4
end

Quando("seleciono Tipo Fechada") do
  select("Fechada", from: "txtTipo")
  sleep 4
end

Quando("seleciono para Situação Inscrições Abertas") do
  select("Inscrições Abertas", from: "txtSituacao")
  sleep 4
end

Quando("seleciono para Inscrição Automática Não") do
  select("Não", from: "txtInscricaoAutomatica")
  sleep 4
end

Quando("preencho Nº de Vagas com 30") do
  select("30", from: "txtNVagas")
  sleep 4
end

Quando("preencho Nº de Vagas com 30") do
  select("30", from: "txtNVagas")
  sleep 4
end

Quando ("clico em Grade da Turma") do
  click_button "ngb-tab-5"
  sleep 4
end

Quando("preencho a Data com 07/04/2020") do
  select("07/04/2020", from: "gradeTurmaDatainput")
  sleep 4
end

Quando("seleciono o Turno com NOTURNO") do
  select("NOTURNO", from: "selectTurno")
  sleep 4
end

Quando("seleciono o Instrutor com ANDREA COSTA SOUZA") do
  select("ANDREA COSTA SOUZA", from: "selectInstrutor")
  sleep 4
end

Quando("seleciono o Local com GEFIS") do
  select("GEFIS", from: "selectLocal")
  sleep 4
end

Então("clico em Adicionar") do
  click_button "Adicionar"
  sleep 4
end

Então("clico em Confirmar") do
  click_button "Confirmar"
  sleep 4
end

Então("valido a mensagem de inclusão com sucesso.") do
  within(".modal") do
    expect(page).to have_content "Inclusão realizada com sucesso."
    sleep 4
    click_button "Ok"
    sleep 4
  end
end
