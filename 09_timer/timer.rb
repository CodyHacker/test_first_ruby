class Timer

	attr_reader :seconds

	def seconds=(new_seconds)
		@seconds = new_seconds
	end

	 def initialize
	 	@seconds = 0
	 end

	def time_string
		if @seconds >= 3600
			hours = @seconds / 3600
			seconds_remaining = @seconds - 3600
		else 
			hours = 0
			seconds_remaining = @seconds
		end
		if seconds_remaining >= 60
			minutes = seconds_remaining / 60
			seconds_remaining %= 60
		else
			minutes = 0
			seconds_remaining = @seconds
		end

		hours.to_s.rjust(2,"0") << ":" << minutes.to_s.rjust(2,"0") << ":" << seconds_remaining.to_s.rjust(2,"0")
	end

end