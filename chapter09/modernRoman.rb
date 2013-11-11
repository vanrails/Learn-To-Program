# 9.5 "Modern" Roman numerals
# page 68

def convert_To_Roman number
	string_numeral = ''
	
	(number/1000).times do
		string_numeral << 'M'
	end
	left_over = number % 1000

# => checking if we can add 'CM' the 900 'subtracted' symbol
	if left_over >= 900 && left_over < 1000
		string_numeral << 'CM'
		left_over = left_over - 900
# => checking if we can add 'CD' the 400 'subtracted' symbol
	elsif left_over >= 400 && left_over < 500
		string_numeral << 'CD'
		left_over = left_over - 400
	elsif left_over >= 500
		string_numeral << 'D'
		left_over = left_over % 500
	end
	
	(left_over/100).times do
		string_numeral << 'C'
	end
	left_over = left_over % 100
	
# => checking if we can add 'XC' the 90 'subtracted' symbol
	if left_over >= 90 && left_over < 100
		string_numeral << 'XC'
		left_over = left_over - 90
# => checking if we can add 'XV' the 40 'subtracted' symbol
	elsif left_over >= 40 && left_over < 50
		string_numeral << 'XV'
		left_over = left_over - 40
	elsif left_over >= 50
		string_numeral << 'L'
		left_over = left_over % 50
	end

	(left_over/10).times do
		string_numeral << 'X'
	end
	left_over = left_over % 10

# => checking if we can add 'IX' the 9 'subtracted' symbol
	if left_over == 9
		string_numeral << 'IX'
		left_over = left_over - 9
# => checking if we can add 'IV' the 4 'subtracted' symbol
	elsif left_over == 4
		string_numeral << 'IV'
		left_over = left_over - 4
	elsif left_over >= 5
		string_numeral << 'V'
	end
	left_over = left_over % 5

	(left_over/1).times do
		string_numeral << 'I'
	end
# => zeroing out [left_over] variable, just because
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