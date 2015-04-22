require('sinatra')
require('sintatra/reloader')
require('scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/title') do
  @title = params.fetch('title').scrabble_score()
  erb(:title)
end
