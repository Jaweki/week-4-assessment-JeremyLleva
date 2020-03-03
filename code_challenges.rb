# ASSESSMENT 4: Ruby Coding Practical Questions

# --------------------1) Create a method that takes in an array and returns an array with only odd numbers sorted from least to greatest.





fullArr1 = [4, 9, 0, '7', 8, true, 'hey', 7, 199, -9, false, 'hola']
# Expected output: [-9, 7, 9, 199]
fullArr2 = ['hello', 7, 23, -823, false, 78, nil, '67', 6, 'Number']
# Expected output: [-823, 7, 23]
def only_even(arr)
	numsOnly = arr.select { |num| num.is_a? Integer  } 
	oddOnly = numsOnly.select { |num| num % 2 != 0 }
	return oddOnly.sort()
end 

puts only_even(fullArr1)
puts only_even(fullArr2)

# --------------------2) Create a class called Bike that is initialized with a model, wheels, and a frame size. The default number of wheels is 2. Create a get_info method that returns a sentence with all the data from the bike object.

class Bike
	def initialize(model, wheels = 2, frame_size)
		@model = model
		@wheels = wheels
		@frame_size = frame_size
		@speed = 0
	end

	def get_info
		puts "The #{@model} bike has #{@wheels} and a #{@frame_size}cm frame."
	end
# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'


# -------------------3) Add a bell to the bike class and create a method that will ring the bell when the method is called.
	
	def ring_bell
		puts 'Beep beep!'
	end

# -------------------4) Add a speedometer to the Bike class. The speed should be initialized at 0.
	def speed
		puts @speed
	end

# -------------------5) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.

	def pedal_faster
		@speed += 10
	end

	def brake
		@speed -= 15
		if @speed < 0
			@speed = 0
		end
	end

end

bike_one = Bike.new('Fast', 2, 167)
bike_one.get_info
bike_one.ring_bell

bike_one.speed
puts "Pedal once"
bike_one.pedal_faster
bike_one.speed

puts "Pedal once"
bike_one.pedal_faster
bike_one.speed

puts "Pedal once"
bike_one.pedal_faster
bike_one.speed

puts "Brake once"
bike_one.brake
bike_one.speed

puts "Brake once"
bike_one.brake
bike_one.speed

puts "Brake once"
bike_one.brake
bike_one.speed


# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'


# -------------------3) Add a bell to the bike class and create a method that will ring the bell when the method is called.





# Expected output example: my_bike.ring_bell => 'Beep beep!'


# -------------------4) Add a speedometer to the Bike class. The speed should be initialized at 0.





# Expected output example: my_bike.speed => 0


# -------------------5) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.





# Expected output example: my_bike.pedal_faster 10 => 10
# Expected output example: my_bike.brake 15 => 0
