# frozen_string_literal: true
def reverse_matrix1 list
	i = 0
	arr2 = []
	list.length.times do 
		arr2 << list.reverse[i]
		i += 1
	end
	arr2
end

def reverse_matrix2 list
	list.reverse!
end