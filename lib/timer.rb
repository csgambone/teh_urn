class Timer
	def init
		@running = false
	end

	def start
		if @running == false
			@start_time = Time.now
			@running = true
		else
			p "Timer already running!"
		end
	end

	def current
		if @running == true
			@current = Time.now - @start_time
		else
			@current = @end_time
		end
	end

	def stop
		if @running == true
			@end = Time.now - @start_time
			@running = false
		else
			p "Timer already stopped!"
		end
	end

	def start_time
		@start_time
	end

	def end_time
		@end_time
	end

end