#timer_spec.rb
require 'rspec'
require_relative '../lib/timer'

describe Timer do
	before (:each) do
    	@timer = Timer.new
    	@timer.init
  	end

	it "starts a timer" do
		@timer.start
		@timer.current.should be >= 0
	end

	it "returns 0.1 seconds after 0.1 seconds" do
		@timer.start
		sleep 0.1
		@timer.current.should be_within(0.01).of(0.1)
	end

	it "should be able to stop" do
		@timer.start
		sleep 0.1
		@timer.stop
		sleep 0.1
		@timer.current.should eq(@timer.end_time)
	end
end
