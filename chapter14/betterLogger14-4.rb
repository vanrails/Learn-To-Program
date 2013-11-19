# 14.4 Program logger
# page 120

$log_depth = 0

def log log_description, &block
	indent = '	'*$log_depth
	puts indent + "Starting '#{log_description}'"
	$log_depth += 1
	result = block.call
	$log_depth -= 1
	puts indent + "'#{log_description}' finished result: #{result}"

end

log 'shell block' do
	log 'inner block' do
		log 'deeper block' do
			"I'm pretty indented right now"
		end
		"\"Found the little monster\""
	end
	log 'because block' do
		'"What was I doing?"'
	end
	"endless nonsense"
end