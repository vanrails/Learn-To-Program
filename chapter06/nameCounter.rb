# From top of page 30

puts 'What is your first name?'
firstName = gets.chomp
puts 'What is your last name?'
lastName = gets.chomp

numCharacters = firstName.length + lastName.length
puts 'Did you know there are ' + numCharacters.to_s + ' characters'
puts 'in your name, ' + firstName.to_s + ' ' + lastName.to_s + '?'