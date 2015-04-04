
class Rover 

	def initialize(init_x, init_y, init_direction)

		@x = init_x
		@y = init_y
		@direction = init_direction

	end

	def move()
		if @direction == "N"
			@y += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "W"
			@x -= 1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

	def process_instructions(insts)
		insts.each_char do |c|
			case c
			when "L"
			  turn_left
			when "R"
			  turn_right
			when "M"
				move
			else
				puts "ERROR: I don't know what an #{c} is"
			end

			puts self
		end
	end

	def to_s
		"I am at A-Axis = #{@x}, Y-Axis = #{@y}, facing #{@direction}."
	end
	
end


r1 = Rover.new(0, 0, "N")
r1.process_instructions("MMLMRM")

