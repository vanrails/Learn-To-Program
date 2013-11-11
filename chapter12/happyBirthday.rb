# 12.2 Happy Birthday!
# page 97

while true
	puts "In which YEAR were you born?"
	year = gets.chomp
	if year == ''
		puts "Please enter your birth year:"
	else
		break
	end
end
while true
	puts "In which MONTH were you born?"
	month = gets.chomp
	if year == ''
		puts "Please enter your birth month:"
	else
		break
	end
end
while true
	puts "On which DAY were you born?"
	day = gets.chomp
	if year == ''
		puts "Please enter the day of your birth:"
	else
		break
	end
end

birthday = Time.gm(year, month, day)
today = Time.new
t2 = Time.gm(today.year, month, day)
had_birthday = today - t2
if had_birthday > 0 
	spanks = today.year - birthday.year
elsif had_birthday == 0
	spanks = today.year - birthday.year
	puts "An extra SPANK! for your birthday today"
else
	spanks = (today.year - birthday.year) - 1
end

spanks.times do
	puts "SPANK!"
end
puts "#{spanks} SPANKS! for you"