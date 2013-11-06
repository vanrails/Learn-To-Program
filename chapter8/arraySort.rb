# 8.3 Building and sorting an array
# page 56

puts 'Enter as many words, 1 per line, as you would like.'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	else
		words.push word
	end 
end

words = words.sort
puts words