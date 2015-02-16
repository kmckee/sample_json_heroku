require 'sinatra'
require 'sinatra/json'

# define a route that uses the helper
get '/cities' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  json :all => ['Cleveland', 'Warrensville', 'Solon', 'Avon Lake']
end

post '/save' do |data|
  response.headers['Access-Control-Allow-Origin'] = '*'
  if [true, false].sample
    raise NoMemoryError, 'OMG'
  else
    'OK'
  end
end
