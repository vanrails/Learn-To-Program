# 5.6 page 25
# Full name greeting

puts 'Hello, what\'s first name?'
firstName = gets.chomp
puts 'And your middle name?'
middleName = gets.chomp
puts 'Finally your last name?'
lastName = gets.chomp

puts 'Pleased to meet you ' + firstName
							+ middleName
							+ lastName
