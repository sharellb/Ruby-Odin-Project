
def substrings(word, dictionary)
	matches = []
	frequencies = Hash.new(0)
	word = word.downcase.gsub(/\W/," ").split(" ")
	word.each do |y| 
		dictionary.each  do|x| 
			if y.include?(x)
				matches << x
			end
		end
	end
	matches.each { |x| frequencies[x] += 1}
		
	frequencies.each do |key, value|
		value = value.to_s
		puts key + ": " + value
	end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)