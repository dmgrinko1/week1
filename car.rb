require "./const.rb"
require "./transport.rb"
# Create class Car
class Car < Transport
  attr_accessor :max_weight, :speed, :available, :registration_number
  def initialize(max_weight, speed, available, registration_number)
    super(max_weight, speed, available)
    max_weight_car =  Object.const_get 'Constants::Max_weight_car::VAL'
    max_speed_car = Object.const_get 'Constants::Car_speed::VAL'
    @registration_number = registration_number

    begin
      if @max_weight > max_weight_car or @max_weight <= 0
        abort "@max_weight >= max_weight_car"
      end
    end
    begin
      if @speed > max_speed_car or @speed <= 0
        abort "speed > max_speed_bike"
      end
    end

  end
end
