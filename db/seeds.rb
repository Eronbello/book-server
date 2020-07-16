puts '=> Cadastro de usuários'

[
  { name: "Eron Bello", email: "eron.bello@gmail.com", password: "123456"},
  { name: "Jeam Martins", email: "jeam@gmail.com", password: "123456"},
  { name: "Raquel Aparecida", email: "raquel@gmail.com", password: "123456"},
  { name: "Charles Marafao", email: "charles@gmail.com", password: "123456"}
].each do |user_params|
  user = User.create(user_params)
end

# [
#   { title: "The water cure", author: "Joanne Ramos", description: "King has tenderly staked out a territory for his wife and three daughters, Grace, Lia, and Sky. He has lain the barbed wire; he has anchored the buoys in the water; he has marked out a clear message: Do not enter.", category: "Romance", background: "https://image.slidesharecdn.com/read-pdf-the-water-cure-full-download-191227170206/95/read-pdf-the-water-cure-full-download-1-638.jpg?cb=1577466155", available: true  },
#   { title: "Severance", author: "Ling Ma", description: "Candace Chen, a millennial drone self-sequestered in a Manhattan office tower, is devoted to routine. So she barely notices when a plague of biblical proportions sweeps New York. Then Shen Fever spreads. Families flee. Companies halt operations. The subways squeak to a halt. Soon entirely alone, still unfevered, she photographs the eerie, abandoned city as the anonymous blogger NY Ghost.", category: "Ficção científica", background: "https://images-na.ssl-images-amazon.com/images/I/81A9dFqIEEL.jpg", available: false  },
# ].each do |book_params|
#   book = Book.create(book_params)
# end 

# { title: "Severance", author: "Ling Ma", description: "Candace Chen", category: "Ficção científica", background: "https://", available: false  }