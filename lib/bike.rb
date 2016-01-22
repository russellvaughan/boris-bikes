class Bike
	attr_accessor :working

	def initialize(working=true)
		@working = working
	end

  def report
  	@working = false
  end

end