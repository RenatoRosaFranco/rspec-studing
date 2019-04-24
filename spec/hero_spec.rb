# frozen_string_literal: true
require './src/hero'
require 'awesome_print'

RSpec.describe Hero do
	describe 'creating a hero' do
		hero = Hero.new('Renato Franco', 20)

		# Creating a valid hero
		# @implemented
		it 'should return a valid hero' do
			expect(hero.name).to eq('Renato Franco')
			expect(hero.level).to eq(20)
		end

		# creating a invalid hero
		# @important
		it 'should return a invalid hero' do
			hero.set_name(nil); hero.set_level(nil)
			expect(hero.name).not_to eq('Sam Harris')
			expect(hero.level).not_to eq(15)
		end
	end

	describe 'Heroe attributes' do
		hero = Hero.new('James Scott', 40)

		# Return hero name
		# @implemented
		it 'should return hero name' do
			expect(hero.show_name).to eq('James Scott')
		end
		
		# Return hero level
		# @implemented
		it 'should return hero level' do
			expect(hero.show_level).to eq(40)
		end

		# Return empty hero name
		# @implemented
		it 'should return a empty hero name' do
			hero.set_name(nil)
			expect(hero.show_name).to eq(nil)
		end
		 
		# Return empty hero level
		# @implemented
		it 'should return a empty hero level' do
			hero.set_level(nil)
			expect(hero.show_level).to eq(nil)
		end	

		# Return hero Swords
		it 'should return hero swords' do
			swords = ['Sword of Valor', 'Excalibur']
			hero.add_sword('Sword of Valor')
			hero.add_sword('Excalibur')
			expect(hero.swords).to eq(swords)
		end
	end
end