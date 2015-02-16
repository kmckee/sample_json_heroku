require 'sinatra'
require 'sinatra/json'

# define a route that uses the helper
get '/cities' do
  json :all => ['Cleveland', 'Warrensville', 'Solon', 'Avon Lake']
end
