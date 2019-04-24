# frozen_string_literal: true
require './src/matrix_reverse'
require 'awesome_print'

# Rspec
# @implemented
RSpec.describe do

	# First way to reverse a matrix
	# @implemented
	describe "#reverse matrix method 1" do
		it 'should return a reverse matrix' do
			matrix = [1,2,3,4,5]
			expect(reverse_matrix2(matrix)).to eq([5,4,3,2,1])
			ap matrix
		end
		it 'should return a reverse matrix for 5,4,3,2,1' do 
			matrix = [5,4,3,2,1]
			expect(reverse_matrix2(matrix)).to eq([1,2,3,4,5])
			ap matrix
		end
	end

	# Seccond way to reverse a matrix
	# @implemented
	describe '#reverse matrix method 2' do
		it 'should return a reverse matrix' do
			matrix = [1,2,3,4,5]
			expect(reverse_matrix1(matrix)).to eq([5,4,3,2,1])
			ap matrix
		end
		it 'should return a reverse matrix for 5,4,3,2,1' do 
			matrix = [5,4,3,2,1]
			expect(reverse_matrix1(matrix)).to eq([1,2,3,4,5])
			ap matrix
		end
	end
end