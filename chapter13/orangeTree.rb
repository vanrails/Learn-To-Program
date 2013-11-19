# 13.6 Orange tree
# page 112

class OrangeTree

	def initialize
		@height = 25
		@oranges = 0
		@age = 0
		@grow_age = rand(10..14)
		@max_height = rand(300..460)
		@die_age = @grow_age * rand(6..7)
		@max_age = @die_age + @die_age * 15/100

		puts "You plant an orange tree."
		puts
	end

	def height
		puts "#{@height}cm tall"
	end

	def count_the_oranges
		puts "#{@oranges} oranges"
	end

	def pick_an_orange
		if @oranges >= 1
			@oranges = @oranges - 1
			puts "#{@oranges} oranges left"
		else
			puts "There are no oranges on the tree."
		end
	end

	def one_year_passes
		@age = @age + 1
		if @age > @die_age
			die = 1 + rand(@max_age-@age)
			if die == 1
				puts "Your orange tree died"
				puts "At age #{@age}"
				puts
				exit
			end
		end
		if @age > 4
			@oranges = 4 + rand(@age)
		end
		if @age < @grow_age && @height < @max_height
			@height = @height + 
				(@max_height-@height) / (@grow_age-@age)
		end
		puts "The orange tree ages a year...#{@age} years old" 
	end
end

tree = OrangeTree.new
puts "actions: 'count oranges', 'pick orange', height, 'wait a year'"
puts "	 'bye' to quit"

while true
	act = gets.chomp
	if act == 'bye'
		exit
	elsif act == 'pick orange'
		tree.pick_an_orange
		puts
	elsif act == 'wait a year'
		tree.one_year_passes
		puts
	elsif act == 'height'
		tree.height
		puts
	elsif act == 'count oranges'
		tree.count_the_oranges
		puts
	end
end
