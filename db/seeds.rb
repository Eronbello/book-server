puts '=> Cadastro de usuários'

[
  { name: "Eron Bello", email: "eron.bello@gmail.com", password: "123456"},
  { name: "Jeam Martins", email: "jeam@gmail.com", password: "123456"},
  { name: "Raquel Aparecida", email: "raquel@gmail.com", password: "123456"},
  { name: "Charles Marafao", email: "charles@gmail.com", password: "123456"}
].each do |user_params|
  user = User.create(user_params)
end

puts '=> Cadastro de usuários finalizado'