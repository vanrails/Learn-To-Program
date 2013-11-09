# 11.8 Safer picture downloading
# page 91

Dir.chdir 'C:/PictureInbox'

pic_names = Dir['C:/test/*.jpg']

puts 'What would you like to call this batch?'
while true
	batch_name = gets.chomp.downcase
	if batch_name == ''
		print "please enter a batch name.\n"
	else
		break
	end
end

puts
print "Downloading #{pic_names.length} files:  \n"

pic_number = 1

pic_names.each do |name|
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	if (File.exist? new_name) == false
		File.rename name, new_name
		print '.'
	else
		pic_number = pic_number + 1
		puts 'Skipping ' + new_name + ', already exists.'
	end
end

puts
puts 'Done, cutie!'