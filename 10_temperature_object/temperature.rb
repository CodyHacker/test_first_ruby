class Temperature

	def initialize(c_or_f_and_temp)
		@c_or_f_and_temp = c_or_f_and_temp
	end


	def self.from_celsius(temp)
    	self.new(:c => temp)
  	end  

	def self.from_fahrenheit(temp)
    	self.new(:f => temp)
  	end  



	def in_fahrenheit
		temp = @c_or_f_and_temp.fetch(:f, "in_c")
		if temp == "in_c"
			 ctof(@c_or_f_and_temp[:c])
		else
			temp
		end
	end



	def in_celsius
		temp = @c_or_f_and_temp.fetch(:c, "in_f")
		if temp == "in_f"
			 ftoc(@c_or_f_and_temp[:f])
		else
			temp
		end
	end


private

	def ftoc(fahrenheit)
		((fahrenheit.to_f - 32.0) / 1.8).round(2)
	end

	def ctof(centigrade)
		(centigrade.to_f * 1.8 + 32.0).round(2)
	end

end

class Celsius < Temperature

	def initialize(temp)
		 @c_or_f_and_temp = {:c => temp}
	end

end

class Fahrenheit < Temperature

	def initialize(temp)
		@c_or_f_and_temp = {:f => temp}
	end

end





