require "./const.rb"
# Create class Transport
class Transport
  attr_accessor :max_weight, :speed, :available

  def initialize(max_weight, speed, available)
    @max_weight = max_weight
    @speed = speed
    @available = available
=begin
  # displaying values
  puts "Maximum weight is: #@max_weight"
  puts "Speed is: #@speed"
  puts "Available is: #@available"
  puts "\n"
=end
  end

  def delivery_time(lenght_of_way)
    return lenght_of_way / @speed
  end

  # Сomparison of the delivery speed of 1 kg of delivery
  def compare
    @speed = @speed / @max_weight
  end
end

#tr = Transport.new(100, 50, true)
#p tr.available
