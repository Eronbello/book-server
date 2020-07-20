puts '=> Cadastro de categorias'

[
  {
    title: 'RPG',
    url: 'https://caixinhaquantica.com.br/wp-content/uploads/2019/07/Capa-Arte-RPG-740x414.jpg'
  },
  {
    title: 'Philosophy',
    url: 'https://static.todamateria.com.br/upload/fi/lo/filosofosmodernos-cke.jpg'
  },
  {
    title: 'Arts',
    url: 'https://www.catho.com.br/educacao/blog/wp-content/uploads/sites/2/2019/03/2019-03-21-como-e-o-curso-de-artes-cenicas.png'
  },
  {
    title: 'History',
    url: 'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/1-historia.jpg'
  },
  {
    title: 'Mangás',
    url: 'https://geeksinaction.com.br/wp-content/uploads/2020/02/Jujutsu-Kaisen-Manga-2020-Featured-752x407.jpg'
  }
].each do |category_params|
  Category.create(category_params)
end