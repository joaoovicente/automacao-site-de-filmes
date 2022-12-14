Dado('que {string} é um novo filme') do |movie_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movies.yaml"))
  @movie = file[movie_code]
  Database.new.delete_movie(@movie["title"])
end

Dado('este filme já existe no catálogo') do
  Database.new.insert_movie(@movie)
end
  
Quando('eu faço o cadastro deste filme') do
  @movie_page.add_movies_button
  @movie_page.create(@movie)
end
  
Então('devo ver o novo filme na lista') do
  result = @movie_page.movie_tr(@movie["title"])
  expect(result).to have_text @movie["title"]
  expect(result).to have_text @movie["status"]
end

Então('devo ver a notificação {string}') do |expect_alert|
  expect(@movie_page.alert).to have_text expect_alert
end

Dado('que {string} está no catálogo') do |movie_code|
  steps %{
    Dado que "#{movie_code}" é um novo filme
    E este filme já existe no catálogo
  }
end

Quando('eu removo este item') do
  @movie_page.remove_movie(@movie["title"])
end

Quando('eu confirmo a solicitação') do
  @movie_page.confirm_remove_movie
end

Então('este item deve ser removido do catálogo') do
  expect(page).not_to have_text @movie["title"]
end

Quando('cancelo a solicitação') do
  @movie_page.cancel_remove_movie
end

Então('este item deve permanecer no catálogo') do
  result = @movie_page.movie_tr(@movie["title"])
  expect(result).to have_text @movie["title"]
end