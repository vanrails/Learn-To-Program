# 13.2b Cheating Die
# page 104

class Die
	
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def cheat die_side
		if die_side > 6 ; die_side = 6 end
		if die_side < 1 ; die_side = 1 end
		@number_showing = die_side
	end

	def showing
		@number_showing
	end
end

puts Die.new.showing
puts

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts

puts die.cheat(5)