# 7.5 Deaf Grandma
# page 49

while true
	puts 'What would you like to tell Granny?'
	statement = gets.chomp

	if statement == "BYE"
		break
	elsif statement == statement.upcase
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end

	
end