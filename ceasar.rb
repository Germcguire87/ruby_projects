def cipher (input, num)
	upper_letters = ("A".ord.."Z".ord).to_a
	lower_letters = ("a".ord.."z".ord).to_a
	encrypted_word = []

	input.each_char do |c|
		

		if c.match(/[A-Z]+/)
			replacement = (c.ord + num)
			if replacement > 90
			replacement = replacement - 90 + 64
			end
			encrypted_word.push(replacement.chr)
		elsif c.match(/[a-z]+/)
			replacement = (c.ord + num)
			if replacement > 122
				replacement = replacement - 122 + 97
			end
			encrypted_word.push(replacement.chr)
		elsif c.match(/[^A-Za-z]/)
			encrypted_word.push(c)
		end
	end

	puts encrypted_word.join
	print upper_letters
	print lower_letters
end


cipher("What a string!", 5)

