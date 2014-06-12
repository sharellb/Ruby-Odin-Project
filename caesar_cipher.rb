
def caesar_cipher(string, key)
	string_array = string.split('')
	string_array.each do |x|
		if x.match(/^[[:alpha:]]$/)
			if x == x.upcase
				x = x.ord
				if (x > 90 - key)
					x += key - 26
				else x += key
				end
				print x.chr
			else x == x.downcase
				x = x.ord
				if (x > 122 - key)
					x += key - 26
				else x += key 
				end
				print x.chr
			end
		else print x
		end
	end 
end

caesar_cipher("What a string!", 5)