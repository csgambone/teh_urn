require_relative "../lib/timer.rb"

a = Timer.new
a.init
a.start

while(1)
	p a.current
	sleep 0.1
end