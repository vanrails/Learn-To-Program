# 14.4 Grandfather clock
# page 120

def grandfather_clock hours, &block
	hours.times do
		block.call
	end
end

time = Time.new.hour
if time > 12 ; time = time-12 end
if time == 0 ; time = 12 end

grandfather_clock time do
	puts 'DONG!'
end