# 7.5 99 Bottles of Beer on the Wall
# page 49
beers = 99
while beers > 0
	puts beers.to_s + ' bottles of beer on the wall.'
	puts beers.to_s + ' bottles of beer.'
	puts 'take one down, pass it around, '
	beers = beers - 1
	puts beers.to_s + ' bottles of beer on the wall.'

	puts 
	
end

puts '0 bottles of beer on the wall.'
puts '0 bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall'

puts