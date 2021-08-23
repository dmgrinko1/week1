require "./const.rb"
require "./transport.rb"
# Create class Bike
class Bike < Transport
  attr_accessor :max_weight, :speed, :available, :max_distance

  def initialize(max_weight, speed, available)
    super(max_weight, speed, available)
  
    @max_distance = Object.const_get 'Constants::Max_distance_bike::VAL'
    max_weight_bike = Object.const_get 'Constants::Max_weight_bike::VAL'
    begin
      if @max_weight > max_weight_bike or @max_weight <= 0
        abort "@max_weight >= max_weight_bike"
      end
    end
    max_speed_bike = Object.const_get 'Constants::Bike_speed::VAL'
    begin
      if @speed > max_speed_bike or @speed <= 0
        abort "speed > max_speed_bike"
      end
    end
 end
end

#p bike = Bike.new(7, 10, true)
#p bike.max_distance
