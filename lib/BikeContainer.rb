# require_relative "../spec/support/shared_examples_for_bike_container"
# module BikeContainer


# DEFAULT_CAPACITY = 20

# attr_reader :capacity 

# 	def initialize(capacity = DEFAULT_CAPACITY)
# 	@capacity = DEFAULT_CAPACITY
# 	@bikes = []
# 	end

# 	def add_bike(bike)
# 	raise "#{self.class.name} full" if full?
# 	bikes << bike
# 	end

# 	def remove_bike
#   	raise "#{self.class.name} empty" if empty?
#   	bikes.pop
# 	end

# 	def full?
# 		bikes.count >= capacity
# 	end

# 	def empty?
# 		bikes.count == 0
# 	end

# private 

# attr_reader :bikes

# end
