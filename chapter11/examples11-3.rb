# 10-3
# page 85

filename = 'ListerQuote.txt'
test_string = 'I promise that I swear abslutely that ' +
			  'I will never mention gazpacho soup again.'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)