# #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# #RUBY ARRAYS 1)
# days_of_the_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
# p days_of_the_week

# #RUBY ARRAYS 2)
# revised = []
# days_of_the_week.length.times do
# revised.push days_of_the_week.pop	
# end
# p revised

# #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# HASHES 1)

# users = {
# 	"Jonathan" => { 	:twitter => "tronathan",
#     								:favorite_numbers => [12, 42, 75],
#   							},
#   "Erik" => { 			:twitter => "sferik",
#     								:favorite_numbers => [8, 12, 24],
#   					},
#   "Tripta" => { 		:twitter => "triptagupta",
#     								:favorite_numbers => [12, 14, 85],
#   						},
#  }
 
# # Write code that would add the number 7 to Erik's favorite numbers.
# # users['Erik'] = "8, 12, 24, 7"
# users['Erik'] = '7'
# p users

# # Write code that would add yourself to the users hash.
# users["Matt"] = { :twitter => "twitter", :favorite_numbers => [1]}
# p users

# Write code that returns the array of Erik's favorite numbers.
# p users["Erik"][:favorite_numbers]

# Write code that returns the smallest of Erik's favorite numbers.
# p users["Erik"][:favorite_numbers].min


# #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# RUBY METHODS 1) 

# Describe the output of the folowing:
# def greet()
#     greeting = "Hello!" + welcome()
# end

# def welcome()
#     welcoming  = "Welcome to the event." + direct_to_seat()
# end

# def direct_to_seat()
#     "Please take a seat"
# end

# puts greet()
 
# puts "The output would read: 'Hello!Welcome to the event.Please take a seat'"
# puts "Greet method calls the welcome method, which calls the direct_to_seat method."

# RUBY METHODS 2) 
# def my_func()
#     puts "going down 1!"
#     my_second_func()
#     puts "going up 1!"
# end

# def my_second_func()
#     puts "going down 2!"
#     my_third_func()
#     puts "going up 2!"
# end

# my_third_func()
#     puts "going down 3"
#     puts "going up 3"
# def 

# my_func()

# puts "The original output will generate an error message as the last method is undefined."


# RUBY METHODS 3) 
# Define a method that prompts a user with a question and checks it against an array of answers until the answer is valid

# def color_query
# puts "What is your favorite color?"
# response = gets.chomp
# colors = ["brown", "red", "green", "yellow", "orange"]

# 	if colors.include? response
# 		puts "Nice, #{response} is a great color."
# 	else
# 		puts "I do not understand.  Please pick a new favorite color..."
# 		color_query
# 	end
# end
	
# color_query

# RUBY METHODS 4) 
# Write a swap method that takes an array and two indexes to swap

# def swap
# 	array1 = [1, 4, 5, 9, 10, 12, 99]
# 	# array1.insert(2, array1.delete_at(7))
# 	# array1.swap(2)
# 	p array1[2]
# 	# p array1
# end 

# swap

# swap()


# RUBY CLASSES 
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# 1) What instance variables are accessible in the Lion class?
# "Instance variables accessible in Lion class are: 1) name, 2) age, 3) weight and 4)is_king_of_pride_lands"

# class Animal
#      attr_reader :age, :weight
#      attr_accessor :name

#      def initialize(name, age, weight)
#          @name = name
#          @age = age
#          @weight = weight
#      end

#      def name
#          @name
#      end

#      def name=(other)
#          @name = other
#      end

#      def speak
#           "Animal noise"
#      end
# end

# class Lion < Animal
#      attr_reader :is_king_of_pride_lands
#      def initialize(name, age, weight, is_king_of_pride_lands)
#          super(name, age, weight)
#          @is_king_of_pride_lands = is_king_of_pride_lands
#      end

#      def speak
#          if is_king_of_pride_lands
#              "ROOOOAAAAAAARRRRRR!!"
#          else
#              "roar!"
#          end
#      end
# end

# 2) Create a new object that is a Lion who is the king of the pride lands and is named Simba.
# simba = Lion.new("Simba", 1, 100, true)   
# p simba

# 3) Use the new Lion that you created. What is the return result of calling the speak method
# puts simba.speak
# The resulting output will be: "ROOOOAAAAAAARRRRRR!!"

# 4) Create a new Animal object. Call speak. What is the returned result of speak.

# flannimal = Animal.new("Flannimal", 100, 100)
# puts flannimal.speak
# The resulting output will be: "Animal noise"


