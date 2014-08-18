
class SalesTax
  attr_accessor :products
 

  	@products = Hash.new
    @products = {0 => [ "book", 12.49 ], 1 => [ "music CD", 14.99 ], 2 => [ "chocolate bar", 0.85 ], 3 => ["imported box of chocolates", 10.50], 4 => ["imported bottle of perfume", 54.65], 5 => ["bottle of perfume", 20.89], 6 => ["packet of headache pills", 9.75], 7 => ["box of imported chocolates", 11.25]} 
  
	  @exempted_products = [0, 2, 3, 6, 7] #-> @total_price
	  @imported_products = [3, 4, 7]  #-> @total_duty(product_key)

	  @total_tax = 0.00
	  @total_duty = 0.00	
	  @total_price = 0.00
	  @total_price = @total_price + @total_duty + @total_tax
	  @total_taxes = 0.00

	  @total_tax = 0.00
	  TAX = 0.10
	  DUTY = 0.05

	  	def self.receipt_printer()
	 		puts "\n"

	  		puts "Receipt"
	 		puts "******************************"
	
			puts "Item Name" + "_______________" + "Price"
	  		@chosen_items.each do |item_key|
	  		puts "\n"
	  		puts "#{@products[item_key][0]}" + "________" + "#{@products[item_key][1]}"
	  		puts "\n"
	  		end
	 		puts "\n"
	 		puts "Total price #{@total_price}  |  Total taxes #{@total_duty + @total_tax}"				

	  	end

		def self.product_check()
			@chosen_items.each do |item_key|
			if 
				@exempted_products.include?(item_key) == false && @imported_products.include?(item_key) == true
				# puts "Will include tax and duty"
				@total_tax = @total_tax + (@products[item_key][1] * TAX)
				@total_duty = @total_duty + (@products[item_key][1] * DUTY)
				@total_price += @products[item_key][1]

			elsif @exempted_products.include?(item_key) == true && @imported_products.include?(item_key) == true
				# puts "Will include just duty"
				@total_duty = @total_duty + (@products[item_key][1] * DUTY)
				@total_price += @products[item_key][1]

			elsif @exempted_products.include?(item_key) == true && @imported_products.include?(item_key) == false
				# puts "Will include no tax and no duty"
				@total_price += @products[item_key][1]

			elsif @exempted_products.include?(item_key) == false && @imported_products.include?(item_key) == false
				# puts "Will include just tax"				
				@total_tax = @total_tax + (@products[item_key][1] * TAX)
				@total_price += @products[item_key][1]

			end		

			end
				receipt_printer()

		  	return	
		end
	  

		# Prints the menu
	  	def self.menu
	  		@products.each do |index, (x,y)|
	  			puts "[#{index}] #{x} #{y}" 
	  		end
	            @chosen_items = []

	            while @user_choice != 8
		    	puts "Please make a choice"
		  		@user_choice = gets.chomp.to_i   
			      	if @user_choice == 8
			      		product_check
			      		return
			      	else
			      		@chosen_items.push(@user_choice)
			      	end
			      		      	puts "#{@chosen_items}"

				end
	  
	  	def initialize
	    	@products = products
	  	end

	      
	    end


end
SalesTax.new
SalesTax.menu
