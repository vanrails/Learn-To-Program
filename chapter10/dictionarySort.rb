# page 75

word_list = ['john', 'Jacob', 'zebra', 'lion', 'monkey', 'echo', 
			 'piZZa', 'relax', 'Great', 'liza', 'alpha', 'debra', 
			 'Computer', 'relax', 'mankey']

def dictionary_sort some_array 
	recursive_sort some_array, []
end

##
# takes an [unsorted_array] of words and recursively
# removes the smallest word and adds it to a [sorted_array],
# which it returns
##
def recursive_sort unsorted_array, sorted_array
	smallest = find_smallest(unsorted_array)
	if unsorted_array.length > 0
		unsorted_array.delete_at(unsorted_array.index(smallest))
		sorted_array.push smallest
		recursive_sort(unsorted_array, sorted_array)
	end
	sorted_array
end

##
# take [list] of words and returns [smallest] alphabetical
# word
## 
def find_smallest list
	smallest = list[0]
	list.each do |word|
# => Comparing downcase to downcase is the only change
# => needed to enable 'dictionary sort'
		if word.downcase <= smallest.downcase
			smallest = word
		end
	end
	smallest
end

puts word_list.sort # regular sort method of array
puts
puts dictionary_sort word_list # own sort method