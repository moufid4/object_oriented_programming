class MiniRover
	attr_accessor :x, :y, :d


	def initialize(x,y,d)
		@x = x
		@y = y
		@d = d
	end
	


	def current
		puts "(#{@x}, #{@y}, #{@d})"
	end


	def turn(instruction)

		if instruction == "L" && @d == "N"
			puts "The rover will head WEST"
			@d = "W"
			return
		end	
		if instruction == "L" && @d == "S"
			puts "The rover will head EAST"
			@d = "E"
			return
		end
		if instruction == "L" && @d == "E"
			puts "The rover will head NORTH"
			@d = "N"
			return	
		end
		if instruction == "L" && @d == "W"
			puts "The rover will head SOUTH"
			@d = "S"
			return
		end
		if instruction == "R" && @d == "N"
			puts "The rover will head EAST"
			@d = "E"
			return
		end
		if instruction == "R" && @d == "S"
			puts "The rover will head WEST"
			@d = "W"
			return
		end
		if instruction == "R" && @d == "E"
			puts "The rover will head SOUTH"
			@d = "S"
			return
		end		
		if instruction == "R" && @d == "W"
			puts "The rover will head NORTH"
			@d = "N"
			return
		end
			
	end

	def move
		if @d == "N" 
			@y += 1							
		end

		if @d == "S"
			@y -= 1		
		end

		if @d == "E"
			@x += 1		
		end

		if @d == "W"
			@x -= 1
		end
	end
end


class UserInput
	

	def self.input_position
		puts "Position? (x,y,direction)"
		@position = gets.chomp
		@x = @position.split(//)[1].to_i
		@y = @position.split(//)[3].to_i
		@d = @position.split(//)[5].upcase	
		puts "#{@position.split(//)}"
		@rover1 = MiniRover.new(@x,@y,@d)
	end

	def self.input_instructions
		puts "Instructions? LLMLMLML"
		@instructions = gets.chomp.upcase
		puts "Given instructions #{@instructions.split(//)}"
		@instructions.split(//).each do |instruction|
			if instruction == "M"
				@rover1.move
			else
				@rover1.turn("#{instruction}")
			end
		end
	end

	def self.print_position
		puts "#{@rover1.current}"
	end
end

UserInput.input_position
UserInput.input_instructions
UserInput.print_position