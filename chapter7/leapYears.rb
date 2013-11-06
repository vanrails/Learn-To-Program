# 7.5 Leap Years
# page 49

while true
	puts 'Please give me a starting year:'
	startYear = gets.chomp.to_i
	puts 'Please give me an ending year:'
	endYear = gets.chomp.to_i

	if startYear >= endYear
		puts 'The starting year should be smaller than the ending year.'
	else
		break
	end
end

puts '-------------'

currentYear = startYear
while currentYear <= endYear
	if currentYear % 400 == 0
		puts currentYear.to_s
	end

	if currentYear % 4 == 0 && currentYear % 100 != 0
		puts currentYear.to_s 
	end

	currentYear = currentYear + 1

end