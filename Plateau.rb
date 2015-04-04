class Plateau

	@@grid_size = Hash.new

	def x_plateau_size()

		while true
			puts "What would you like the X-AXIS grid size to be?"

			x_grid_size = gets.chomp.to_i

			if x_grid_size > 10
				puts "That number is too great for the plateau grid size!"
			elsif x_grid_size <= 9 
				@@grid_size["X-Axis"] = x_grid_size
				puts "You've assigned #{x_grid_size} to the X-Axis!"
				break
			elsif x_grid_size < 0
				puts "You cannot have a negative number for your X-Axis!"
			else
				nil
			end
		end
	end


	def y_plateau_size()

		while true
			puts "What would you like the Y-AXIS grid size to be?"

			y_grid_size = gets.chomp.to_i

			if y_grid_size > 10
				puts "That number is too great for the plateau grid size!"
			elsif y_grid_size <= 9
				@@grid_size["Y-Axis"] = y_grid_size
				puts "You've assigned #{y_grid_size} to the Y-Axis!"
				break
			elsif y_grid_size < 0
				puts "You cannot have a negative number for your Y-Axis!"
			else
				nil
			end
		end
	end

	def grid_set_up()

		puts @@grid_size

	end
end


p1 = Plateau.new()
p1.x_plateau_size
p1.y_plateau_size
p1.grid_set_up





