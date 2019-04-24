# frozen_string_literal: true
require 'sinatra'
require 'yaml'
require 'json'

get '/products' do
	products = [
		{
			id: 1,
			name: 'Playstation 2',
			description: 'A playstation 2 videogame'
		},
		{
			id: 2,
			name: 'Xbox One',
			description: 'A Xbox One video game'
		}
	]

	JSON.generate(products)
end

get '/products/:id' do
	puts 'show a product'
end