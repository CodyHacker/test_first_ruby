
def translate(sentence)
	sentence.split(" ").map { |word| piggify(word) }.join(" ")
	
end

def is_capitalized?(word)
	word[0] == word[0].upcase
end


def piggify(word)
	vowles = ['a','e','i','o','u']
	consonants = ('a'..'z').to_a - vowles
	word_is_capitalized = is_capitalized?(word)
	if word.downcase.start_with?("qu")
		return_word = word[2..-1] << word[0..1] << "ay" 
	elsif vowles.include?(word[0].downcase)
		return_word = word << "ay" 
	elsif consonants.include?(word[1].downcase)
		if consonants.include?(word[2].downcase) || ('q'.include?(word[1].downcase) && 'u'.include?(word[2].downcase))
			return_word = word[3..-1] << word[0..2] << "ay"
		else
			return_word = word[2..-1] << word[0..1] << "ay"
		end
	else
		return_word = (word[1..-1] << word[0] << "ay")
	end
	return_word.capitalize! if word_is_capitalized
	return return_word
end