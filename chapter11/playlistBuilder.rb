# 11.8 Build your own playlist
# page 92

Dir.chdir 'C:\Users\Ruan\Music\Old Aus'

def shuffle some_words
	recursive_shuffle some_words, []
end
##
# accepts a list of [unshuffled_words] from which it
# removes a random one and assigns it to a list of
# [shuffled_words].
#
# This is a Fisher-Yates shuffle 
##
def recursive_shuffle unshuffled_words, shuffled_words
	if unshuffled_words.length > 0
		a_word = random_word(unshuffled_words)
		unshuffled_words.delete_at(unshuffled_words.index(a_word))
		shuffled_words.push a_word
		recursive_shuffle(unshuffled_words, shuffled_words)
	end
	shuffled_words
end

##
# accepts an array, [list], of words and returns a
# random [word] from it.
##
def random_word list
	print '.'
	word = list[rand(0..(list.length-1))]
end

def save_playlist list
	Dir.chdir 'C:/Users/Ruan/Desktop'
	File.open 'playlist.m3u', 'w' do |f|
		list.each do |file|
			f.write(file + "\n")
		end
	end
end

files =  Dir.glob("**/*.mp3")
print "Found #{files.length} files\n"
print "Shuffling"
files = shuffle files
puts "Done!"
puts
files.each do |file|
	files[files.index(file)] = Dir.pwd + '/' + files[files.index(file)]
end

save_playlist files