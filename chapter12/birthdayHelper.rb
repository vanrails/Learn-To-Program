# 12.6 Birthday Helper
# page 101

filename = "birthdays.txt"
bdays_string = File.read filename

bdays_hash = Hash.new
bdays_string.each_line do |line|
	line = line.chomp
	temp_array = line.split(', ')
	bdays_hash[temp_array[0]] = temp_array[1] + ' ' + temp_array[2]
end

puts "Enter a name to look up their birthday"
name = gets.chomp
name = name.split.map(&:capitalize).join(' ')

puts
puts bdays_hash[name]
puts