# Looping 
#page 42
input = ''
while input != 'bye'
	puts input
	input = gets.chomp
end
puts 'Come again soon!'

puts ''

# page 43
while true
	input = gets.chomp
	puts input
	if input == 'bye'
		break
	end
end