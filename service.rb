require 'sinatra'
require 'sinatra/json'

get '/nearby_cities/:id' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  raise ArgumentError unless params[:id] == '42'
  json :all => ['Cleveland', 'Warrensville', 'Solon', 'Avon Lake']
end

post '/save' do |data|
  response.headers['Access-Control-Allow-Origin'] = '*'
  'OK'
end

get '/details/:id' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  raise ArgumentError unless params[:id] == '42'
  json ({ cityName: "Ohio City",
    county: "Cuyahoga",
    population: "9,200",
    medianIncome: "$20,000",
    founded: "1836"
      })
end

