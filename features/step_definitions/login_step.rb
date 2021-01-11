Dado("que eu navego pela url do sistema") do
  visit "/siec/home"
  sleep 2
end

Dado("fecho o acesso inicial") do
  find(".fa-times").click
  sleep 2
end

Quando("informo o usuario") do
  fill_in "usuario", with: "dservidor"
  sleep 2
end

Quando("informo a senha valida") do
  fill_in "senha", with: "dserv28"
  sleep 2
end

Quando("clico no botao entrar") do
  click_button "Entrar"
  sleep 2
end

Então("acesso deve ser realizado com sucesso") do
  expect(page).to have_content "Bem-vindo!"
  sleep 3
end

Quando("informo a senha incorreta") do
  fill_in "senha", with: "dserve27"
  sleep 2
end

Então("exibir mensagem de usuario e senha incorreto") do
  expect(page).to have_content "Erro: -3 | Usuário ou senha Inválidos"
  sleep 3
end
