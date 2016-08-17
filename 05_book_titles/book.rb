class Book

	LITTLE_WORDS = %w(the a an and in of)

	def title
		@title
	end

	def title=(str)
		@title = capitalize_title(str)
	end
 
	def capitalize_title str
		array = str.split(' ')
		first = true
		array.each do |word|
			if(not little_word?(word)) || (first && the_word?(word))
				word.capitalize!
				if(first)
					first = false
				end
			end
		end
		array.map {|word| "#{word}"}.join(' ')
	end

	def little_word? word
		LITTLE_WORDS.include? word
	end

	def the_word? word
		word == 'the'
	end
end
