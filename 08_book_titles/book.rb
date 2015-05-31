class Book

	attr_reader :title

	def title=(title) 
		# @title = title.split(" ").each {|word| word.capitalize!}.join(" ")
		words_no_cap = ["and", "or", "the", "over", "to", "a", "an", "but", "of", "in"]
		@title = title.split(" ").each_with_index {|word, index| 
		word.capitalize! unless index != 0 && words_no_cap.include?(word)

	}.join(" ")
	end
end