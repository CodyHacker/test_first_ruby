def echo(word)
	word
end

def shout(word)
	word.upcase
end


def repeat(word, n=2)
	("#{word} " * n).chop
end

def start_of_word(word, number_of_letters)
	word[0, number_of_letters]
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize(sentence)
	words_no_cap = ["and", "or", "the", "over", "to", "a", "but"]
	sentence.split(" ").each_with_index {|word, index| 
		word.capitalize! unless index != 0 && words_no_cap.include?(word)

	}.join(" ")

end
