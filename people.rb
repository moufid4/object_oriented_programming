class Student
attr_accessor :name

# Step 2 : The student class has a method called learn that outputs "I get it!"
	def learn

		puts "I get it!"
	end


end

class Instructor

# Step 3 : The instructor class has a method called teach that outputs "Everything in Ruby is an Object".
	def teach
		puts "Everything in Ruby is an Object"
	end


end

# Step 4 : Create a Person class with the attribute name and an initializer
class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

# Step 6 : create an instructor instance (Chris) to do a greeting
	def greeting
		puts "Hi, my name is #{name}"
	
	end



end
# Initialize class Person for Chris
Chris = Person.new('Chris')

Chris.greeting

# Initialize class Person for Cristina
Cristina = Person.new('Cristina')

Cristina.greeting
