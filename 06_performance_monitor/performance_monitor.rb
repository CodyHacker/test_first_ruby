require "time"

def measure(n=1)
	time_started = Time.now
	n.times { yield }
	(Time.now - time_started)/n
end