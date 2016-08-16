def echo phrase
	phrase
end

def shout phrase
	phrase.upcase
end

def repeat phrase, times=2
	([phrase] * times).join(' ')
end

def start_of_word word, position
	word.to_s[0..position - 1]
end

def first_word phrase
	phrase.split(' ')[0]
end

def titleize words
	little_words = ["and","the", "of", "over"]
	processed_words = words.split(' ')
	first = true
	processed_words.each do |word|
		if( first || (not little_words.include? word))
			word.capitalize!
			first = false
		end
	end
	processed_words.map { |s| "#{s}" }.join(' ')
end

