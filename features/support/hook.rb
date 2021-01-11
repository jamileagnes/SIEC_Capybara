Before("@cad_instrutor") do
  sleep 4
  visit "/siec/home"
  find(".fa-times").click
  fill_in "usuario", with: "dservidor"
  fill_in "senha", with: "dserv28"
  click_button "Entrar"
  sleep 3
end

Before("@cad_turma") do
  sleep 4
  visit "/siec/home"
  find(".fa-times").click
  fill_in "usuario", with: "dservidor"
  fill_in "senha", with: "dserv28"
  click_button "Entrar"
  sleep 3
end
