require('sinatra')
require('sintatra/reloader')

get('/') do
  erb(:index)
end
