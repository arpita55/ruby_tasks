
def mix(h1, h2)
	y = ('a'..'z').to_a.select { |letter| h1.count(letter)> 1 || h2.count(letter) > 1 }
	puts y
	y.map! do |y|
	if h1.count(y) > h2.count(y)
	"1:#{y * h1.count(y)}"
	elsif h1.count(y) < h2.count(y)
	"2:#{y * h2.count(y)}"
	else
	"=:#{y * h1.count(y)}"
	end
	end
end

puts mix("hey! iam arpita singh", "what are you doing?")
