# frozen_string_literal: true
class Hero < Object
	attr_reader :name,  :level
	alias :show_name  :name
	alias :show_level :level

	def initialize(name, level)
		@name   = name
		@level  = level
		@swords = []
	end

	def swords
		@swords
	end

	def set_name(name)
		@name = name
	end

	def set_level(level)
		@level = level
	end

	def add_sword(sword)
		@swords << sword
	end
end