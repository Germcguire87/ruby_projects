def substrings(word, dictionary)
	word.downcase!
	input = word.split(" ")
	dic = dictionary
	output_hash = Hash.new
	i = 0
	x = 0
	y = 0
	
	num = dic.length
	
	
	while i < input.length do 
		x = 0
		num.times do |var|
			sub = dic[x]
			h_num = 1
			if input[i].match(/#{sub}/)
				if output_hash.has_key?(sub)
					h_num = output_hash.fetch(sub) + 1
				end
				output_hash.store(sub,h_num)
			end

		x = x + 1
		end
		i = i + 1
	end
		
		
	
	puts output_hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)		