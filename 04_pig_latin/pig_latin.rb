def translate words
	vowels = ['a','e','i','o','u']
	ay_sound = "ay"
	array = words.split(' ')
	array.each do |word|
		if(word[0] == 'q' and word[1] == 'u')
			word << word[0..1]
			word.slice!('qu')
		else
			consonants = ""
			index = 0
			last_consonant = ''
			until (vowels.include? word[index]) do
				last_consonant = word[index]
				consonants << word[index]
				index += 1
			end

			if(last_consonant == 'q' and word[index] == 'u')
				consonants << 'u'
			end
			word.slice!(consonants)
			word << consonants
		end
		word << ay_sound
	end
	array.map{ |s| "#{s}"}.join(' ')
end