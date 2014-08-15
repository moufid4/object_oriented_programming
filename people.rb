class Student
	attr_accessor :name

	# Step 2 : The student class has a method called learn that outputs "I get it!"
	def learn
		puts "I get it!"
	end
end

class Instructor

	# Step 3 : The instructor class has a method called teach that outputs "Everything in Ruby is an Object".
	
		def initialize
			
		end

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

# Step 7 : Initialize class Person for Cristina
Cristina = Person.new('Cristina')

Cristina.greeting

# Step 8 : Call the teach method on your instructor instance and call the learn method on your student. Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.

Instructor.new.teach
Student.new.learn

# THIS PART DON'T WORK BECAUSE THE TEACH METHOD IS NOT IN THE STUDENT CLASS.
# # Call the teach method on the student
# Student.new.teach

# # Call the learn method on the Instructor
# Instructor.new.learn