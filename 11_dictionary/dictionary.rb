class Dictionary
	def initialize
		@the_entries = {}
	end

	def entries
		@the_entries
	end

	def add(an_entry)

		if ! (an_entry.is_a?(Hash))
			an_entry = {an_entry => nil}
		end
		@the_entries[an_entry.keys.join] = an_entry[an_entry.keys.join]
	end

	def keywords
		@the_entries.keys.sort
	end
	
	def include?(this_key)
 		@the_entries.has_key?(this_key)
	end

	def find(this_key)
		@the_entries.select {|k, _| k.include? this_key}
	end

	def printable
		@the_entries.to_a.sort.map { |i| "[#{i[0]}] '#{i[1]}'\n"}.join.chomp.gsub(/'/, '"')
	end
	
end
