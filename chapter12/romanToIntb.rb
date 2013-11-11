# 12.6 Party like it's roman_to_integer 'mcmxcix'
# page 101

romanHash = {}
romanHash['m'] = 1000
romanHash['d'] = 500
romanHash['c'] = 100
romanHash['l'] = 50
romanHash['x'] = 10
romanHash['v'] = 5
romanHash['i'] = 1

romanHash['cm'] = 100
romanHash['xc'] = 10
romanHash['ix'] = 1

def numeral_valid some_string, romanHash
	cm_count = 0
	xc_count = 0
	ix_count = 0
	prev_char = ''
	some_string.split("").each do |char|
# => check if the character is valid
		if romanHash[char] == nil
			return false
		end
# => make sure only one subtraction set of each type 
# => is used
		if prev_char != "" && romanHash[prev_char+char] != nil
			if prev_char+char == 'cm'
				cm_count = cm_count + 1
			elsif prev_char+char == 'xc'
				xc_count = xc_count + 1
			elsif prev_char+char == 'ix'
				ix_count = ix_count + 1	
			end
			if cm_count > 1 || xc_count > 1 || ix_count > 1
				return false
			end
		end
		prev_char = char
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

prev_char = ''
romanStr.split("").each do |char|
	romanNum = romanNum + romanHash[char]
	if prev_char != '' && romanHash[char] > romanHash[prev_char]
		romanNum = romanNum - romanHash[prev_char]
		romanNum = romanNum - romanHash[prev_char + char]
	end
	prev_char = char
end

puts romanNum