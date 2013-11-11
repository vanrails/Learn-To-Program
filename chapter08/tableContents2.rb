# 8.3 Table of contents, revisited
# page 56

contents = []
contents.push ['Chapter 1:  Getting Started', 'page  1']
contents.push ['Chapter 2:  Numbers', 'page  9']
contents.push ['Chapter 3:  Letters', 'page 13']

line_width = 60

puts 'Table of Contents'.center(line_width)
puts

contents.length.times do |lineNum|
	puts(contents[lineNum][0].ljust(line_width/2) +
	contents[lineNum][1].rjust(line_width/2))
end

puts