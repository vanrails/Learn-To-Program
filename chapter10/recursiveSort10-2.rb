# page 75

=begin

1. find the "smallest" word
2. push word to end of sorted array
3. put others in unsorted array
4. recur

=end

word_list = ['john', 'jacob', 'zebra', 'lion', 'monkey', 'echo', 
			 'pizza', 'relax', 'great', 'liza', 'alpha', 'debra', 
			 'computer', 'relax']

def sort some_array 
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
		if word <= smallest
			smallest = word
		end
	end
	smallest
end

puts word_list.sort # regular sort method of array
puts
puts sort word_list # own sort method