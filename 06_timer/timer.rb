class Timer

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		t = Time.at(@seconds)
		t.utc.strftime("%H:%M:%S")
	end
end
