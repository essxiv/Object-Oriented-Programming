class Total

	@@ss1 = "Advil: $ 9.75"
	@@ss2 = "Book: $ 12.49"
	@@ss3 = "Bottle Perfume: $ 18.99"
	@@ss4 = "CD: $ 14.99"
	@@ss5 = "Candy: $ 0.85"
	@@ss6 = "Imported Box Chocolates: $ 11.25"
	@@ss7 = "Imported Candy: $ 10.0"
	@@ss8 = "Imported Perfume (1): $ 47.5"
	@@ss9 = "Imported Perfume (2): $27.99"

	@@store_items = {"2) Book": 12.49, "4) CD": 14.99, "5) Candy": 0.85, "7) Imported Candy": 10.00, 
		"8) Imported Perfume (1)": 47.50, "9) Imported Perfume (2)": 27.99, 
		"3) Bottle Perfume": 18.99, "1) Advil": 9.75, "6) Imported Box Chocolates": 11.25}

	@@bt = 0.10
	@@it = 0.15

	def initialize(total=0)
		@total = total
		@order = []
	end

	def Cancel()
		puts "You have canceled your order!"
	end

	def Submit()
		puts "Thank you for shopping with us!
		\nHere are your items: #{@order.sort}
		\nHere is your Total: #{@total.round(2)}"
	end

	def Pick()
		puts @@store_items.sort

		gg = true
		while gg == true
			puts "-- Push the number your item is associated with. --
			-- Push [S] to Submit total --
			-- Push [C] to Cancel order --"
			input1 = gets.chomp.downcase
			if input1 == "1"
				@order << @@ss1
				puts "You added Advil."
				puts "Medical item, Tax is Exempt."
				@total += 9.75
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "2"
				@order << @@ss2
				puts "You added Book."
				puts "Book item, Tax is Exempt."
				@total += 12.49
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "3"
				@order << @@ss3
				puts "You added Bottle Perfume."
				ls1 = 18.99 * @@bt
				puts "18.99 + Tax: #{ls1}."
				@total += ls1
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "4"
				@order << @@ss4
				puts "You added a CD"
				ls2 = 14.99 * @@bt
				puts "Tax: #{ls2}."
				@total += ls2
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "5"
				@order << @@ss5
				puts "You added Candy."
				puts "Food item, Tax is Exempt."
				@total += 0.85
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "6"
				@order << @@ss6
				puts "You added Imported Box Chocolates."
				ls3 = 11.25 * @@it
				puts "Tax: #{ls3}"
				@total += ls3
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "7"
				@order << @@ss7
				puts "You added Imported Candy"
				ls4 = 10.0 * @@it
				puts "Tax: #{ls4}"
				@total += ls4
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "8"
				@order << @@ss8
				puts "You added Imported Perfume (1)."
				ls5 = 47.5 * @@it
				puts "Tax: #{ls5}"
				@total += ls5
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "9"
				@order << @@ss9
				puts "You added Imported Perfume (2)."
				ls6 = 27.99 * @@it
				puts "Tax: #{ls6}"
				@total += ls6
				puts @order.sort
				puts "Current Total = #{@total.round(2)}"
			elsif input1 == "s"
				Submit()
				break
			elsif input1 == "c"
				Cancel()
				break
			else
				puts "that is not a valid command"
			end
		end
	end
end


ReC = Total.new
ReC.Pick

