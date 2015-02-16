require 'sinatra'
require 'sinatra/json'

# define a route that uses the helper
get '/cities' do
  response.headers["Access-Control-Allow-Origin"] = "*"
  json :all => ['Cleveland', 'Warrensville', 'Solon', 'Avon Lake']
end
