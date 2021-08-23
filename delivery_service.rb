require "./const.rb"
require "./car.rb"
require "./bike.rb"
require "./transport.rb"
#Create class DeliveryService
class DeliveryService
  def initialize(park)
    @park = park
  end

  def type_of_transport(weight, lenght_of_way)
  selected_transport = Array.new
  for transport in @park
    # Check if there is a suitable transport among bikes 
    if transport.available == true and weight <= transport.max_weight
      if transport.class == Car or (transport.class == Bike and transport.max_distance >= lenght_of_way) 
          selected_transport.push(transport)
      
      end
    end
  end
  # Check if both car and bike classes are among selected
  transport_types = Array.new
  for transport in selected_transport
    transport_types.push(transport.class)
  end
  # If all transport types are the same - choose first one
  # Else - find index of first bike
  # todo: if we do not have available transport, then TypeError will occur
  if (transport_types.to_s).length == 1
    return selected_transport[0]
  else 
    return selected_transport[transport_types.index(Bike)]
  end
  end
end

#Create park of transports
car1 = Car.new(100, 50, true, "aa8080")
car2 = Car.new(80, 40, false, "aa8888")
bike1 = Bike.new(10, 10, true)
bike2 = Bike.new(5, 5, true)
delivery_park = [car1, car2, bike1, bike2]
delivery = DeliveryService.new(delivery_park)

selected_transport = delivery.type_of_transport(10, 4)
p selected_transport
