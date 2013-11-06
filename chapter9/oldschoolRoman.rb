# 9.5 Old-school Roman numerals
# page 68

def convert_To_Roman number
	string_numeral = ''
	
	(number/1000).times do
		string_numeral << 'M'
	end
	left_over = number % 1000

	if left_over >= 500
		string_numeral << 'D'
		left_over = left_over - 500
	end
	
	(left_over/100).times do
		string_numeral << 'C'
	end
	left_over = left_over % 100

	if left_over >= 50
		string_numeral << 'L'
		left_over = left_over - 50
	end

	(left_over/10).times do
		string_numeral << 'X'
	end
	left_over = left_over % 10

	if left_over >= 5
		string_numeral << 'V'
		left_over = left_over - 5 
	end

	(left_over/1).times do
		string_numeral << 'I'
	end
	left_over = left_over % 1

	string_numeral
end

while true
	puts 'Enter a number from 1 to 3000'
	num = gets.chomp.to_i
	if num >= 1 && num <= 3000
		break
	end
end
puts convert_To_Roman num 