# 14.4 Program logger
# page 120

def log log_description, &block
	puts "Starting '#{log_description}'"
	result = block.call
	puts "'#{log_description}' finished"
	puts "returned:  #{result}"

end

log 'shell block' do
	log 'inner block' do
		"\"Found the little monster\""
	end
	log 'because block' do
		'"What was I doing?"'
	end
	"endless nonsense"
end