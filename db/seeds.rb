puts '=> Cadastro de categorias'

[
  {
    title: 'RPG',
    url: 'https://caixinhaquantica.com.br/wp-content/uploads/2019/07/Capa-Arte-RPG-740x414.jpg'
  },
  {
    title: 'Filosofia',
    url: 'https://static.todamateria.com.br/upload/fi/lo/filosofosmodernos-cke.jpg'
  },
  {
    title: 'Artes',
    url: 'https://www.catho.com.br/educacao/blog/wp-content/uploads/sites/2/2019/03/2019-03-21-como-e-o-curso-de-artes-cenicas.png'
  },
  {
    title: 'História',
    url: 'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/1-historia.jpg'
  },
  {
    title: 'Mangás',
    url: 'https://geeksinaction.com.br/wp-content/uploads/2020/02/Jujutsu-Kaisen-Manga-2020-Featured-752x407.jpg'
  }
].each do |category_params|
  Category.create(category_params)
end
# puts '=> Cadastro de usuários'

# [
#   { name: "Eron Bello", email: "eron.bello@gmail.com", password: "123456"},
#   { name: "Jeam Martins", email: "jeam@gmail.com", password: "123456"},
#   { name: "Raquel Aparecida", email: "raquel@gmail.com", password: "123456"},
#   { name: "Charles Marafao", email: "charles@gmail.com", password: "123456"}
# ].each do |user_params|
#   user = User.create(user_params)
# end

# # [
# #   { title: "The water cure", author: "Joanne Ramos", description: "King has tenderly staked out a territory for his wife and three daughters, Grace, Lia, and Sky. He has lain the barbed wire; he has anchored the buoys in the water; he has marked out a clear message: Do not enter.", category: "Romance", background: "https://image.slidesharecdn.com/read-pdf-the-water-cure-full-download-191227170206/95/read-pdf-the-water-cure-full-download-1-638.jpg?cb=1577466155", available: true  },
# #   { title: "Severance", author: "Ling Ma", description: "Candace Chen, a millennial drone self-sequestered in a Manhattan office tower, is devoted to routine. So she barely notices when a plague of biblical proportions sweeps New York. Then Shen Fever spreads. Families flee. Companies halt operations. The subways squeak to a halt. Soon entirely alone, still unfevered, she photographs the eerie, abandoned city as the anonymous blogger NY Ghost.", category: "Ficção científica", background: "https://images-na.ssl-images-amazon.com/images/I/81A9dFqIEEL.jpg", available: false  },
# # ].each do |book_params|
# #   book = Book.create(book_params)
# # end 

# # { title: "Severance", author: "Ling Ma", description: "Candace Chen", category: "Ficção científica", background: "https://", available: false  }