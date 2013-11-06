# 7.5 Deaf Grandma Extended
# page 49

byeCount = 0

while true
	puts 'What would you like to tell Granny?'
	statement = gets.chomp

	if statement == "BYE"
		byeCount = byeCount + 1
		if byeCount == 3
			break
		else
			puts "WHADDIDYA SAY?"
		end
	elsif statement == statement.upcase
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
		byeCount = 0
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		byeCount = 0
	end

	
end