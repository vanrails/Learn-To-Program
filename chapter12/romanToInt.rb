# 12.6 Party like it's roman_t_integer 'mcmxcix'
# page 101


romanHash = {}
romanHash['m'] = 1000
romanHash['d'] = 500
romanHash['c'] = 100
romanHash['l'] = 50
romanHash['x'] = 10
romanHash['v'] = 5
romanHash['i'] = 1
#
romanHash['cm'] = 900
romanHash['xc'] = 90
romanHash['ix'] = 9

def roman_to_int some_string, romanHash
	prev_char = ''
	some_string.split("").each do |char|
		if prev_char != '' and romanHash[char] > romanHash[prev_char]
			romanNum = romanNum - romanHash[prev_char]
			romanNum = romanNum + romanHash[prev_char + char]
		else
			romanNum = romanNum + romanHash[char]
		end
		prev_char = char
	end
	romanNum
end

def numeral_valid string, romanHash
	string.split("").each do |char|
		if romanHash[char] == nil
			return false
		end
	end
	true
end

puts "Enter a valid roman numeral"
while true
	romanStr = gets.chomp.downcase
	if numeral_valid romanStr, romanHash
		break
	else
		puts "Please enter a valid roman numeral"
	end
end

romanNum = 0
puts = roman_to_int romanStr, romanHash