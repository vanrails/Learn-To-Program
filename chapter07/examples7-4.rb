# 7.4 A Little Bit of Logic
# page 44
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' || name == 'Katy'
	puts 'What a lovely name!'
end

# page 46
i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_chris

puts
puts

# page 47
while true
	puts 'What would you like to ask C to do?'
	request = gets.chomp

	puts 'You say, "C, please ' + request + '"'

	puts 'C\'s response:'
	puts '"C ' + request + '."'
	puts '"Papa ' + request + ', too."'
	puts '"Mama ' + request + ', too."'
	puts '"Ruby ' + request + ', too."'
	puts '"Nono ' + request + ', too."'
	puts '"Emma ' + request + ', too."'
	puts

	if request == 'stop'
		break
	end
end