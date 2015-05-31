def ftoc(fahrenheit)
	((fahrenheit.to_f - 32.0) / 1.8).round(2)
end

def ctof(centigrade)
	(centigrade.to_f * 1.8 + 32.0).round(2)
end