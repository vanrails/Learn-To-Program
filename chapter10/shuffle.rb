# 10-3 Shuffle
# page 75

word_list = ['A-lpha', 'B-eta', 'C-harlie', 'D-elta', 'E-cho',
			 'F-oxtrot', 'G-olf', 'H-otel', 'I-ndia', 'J-uliet',
			 'K-ilo', 'L-ima', 'M-ike', 'N-ovember', 'O-scar',
			 'P-apa', 'Q-uebec', 'R-omeo', 'S-ierra', 'T-ango',
			 'U-niform', 'V-ictor', 'W-hiskey', 'X-ray', 
			 'Y-ankee', 'Z-ulu']

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
	word = list[rand(0..(list.length-1))]
end

puts word_list
puts
puts shuffle word_list