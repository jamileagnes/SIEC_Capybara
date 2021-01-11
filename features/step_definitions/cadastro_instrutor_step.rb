Quando("escolho a seção Portal UCS") do
  click_link "Portal UCS"
  sleep 4
end

Quando("escolho a subseção Instrutoria interna") do
  click_link "Instrutoria Interna"
  sleep 4
end

Quando("seleciono a opção Instrutor") do
  click_link "Instrutor"
  sleep 4
end

Quando("clico botão incluir") do
  click_button "Incluir"
  sleep 4
end

Quando("preenche o CPF com CPF {string}") do |cpf|
  @cpf = cpf #Variavél de facil refatoração
  find("input[formcontrolname='CPFId']").set cpf
  sleep 4
end

Quando("matricula {string}") do |matricula|
  @matricula = matricula  #Variavél de facil refatoração
  find("input[formcontrolname='matriculaId']").click
  sleep 2
  fill_in "txtMatricula", :with => matricula
  sleep 4
end

Quando("preencho o Orgão com Bahia Pesca") do
  select("BAHIA PESCA S A", from: "selectClienteSRH")
  sleep 4
end

Quando("regime de trabalho do tipo {string}") do |regimeTrabalho|
  @regimeTrabalho = regimeTrabalho
  select(regimeTrabalho, from: "selectRegimeDeTrabalho")
  sleep 4
end

Quando("telefone {string}") do |telefone|
  @telefone = telefone #Variavél de facil refatoração retorna valor da Feature
  find("input[formcontrolname='telefoneId']").set telefone
  sleep 4
end

Quando("E-mail Institucional com {string}") do |email|
  @email = email #Variavél de facil refatoração
  find("input[formcontrolname='emailInstitucionalId']").set email
  sleep 4
end

Quando("Conclusão curso da SAEB como não.") do
  select("Não", from: "selectConclusaoCursoDaSAEB")
  sleep 4
end

Quando("Habilito para EAD") do
  select("Sim", from: "selectHabilitadoParaEAD")
  sleep 4
end

Quando("escolaridade de ensino superior completo") do
  select("SUPERIOR COMPLETO", from: "selectEscolaridade")
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
