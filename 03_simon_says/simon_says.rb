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
	processed_words = []
	first = true
	words.split(' ').each do |word|
		if( first || (not ["and","the", "of", "over"].include? word))
			processed_words << word.capitalize
			first = false
		else
			processed_words << word
		end
	end
	processed_words.map { |s| "#{s}" }.join(' ')
end

