#When the program starts there will be a welcome message and it will ask for users name.
require_relative 'plant_size'
def welcome
puts "Welcome to the indoor plant shop"
puts "What is your name?"
print ">"
name = gets.chomp()
validate_name(name)
puts ("Hello " + name + ", please answer some questions to find your perfect plant match.")
end

#specify an exception type
def validate_name(name)
 name = name.strip 
 raise ArgumentError, "Name must not be empty" if name.empty?
 name
end
#ask user for plant requirements.

# questions = ["Question 1", "Question 2", "Question 3"]
# answers = []
# questions.each do |question|
#   puts question
#   answers << gets.strip
#  end

# def questions
# puts "What size plant do you want?"
#  puts ">"
# answers[0] = gets.chomp
# puts "Do you want easy or challenging?"
# puts ">"
# answers[1] = gets.chomp
# puts "do you want high light or low light?"
# puts ">"
# answers[2] = gets.chomp
# end


#--------------------------------------------
#start of program
#--------------------------------------------
system 'clear'
welcome

# questions

# answers[]

# name = gets.strip.downcase

# todo = PlantSize.new(name)

# case gets.to_i
# when 1 
#  todo.size
# when 2
#  todo.easy
# when 3
#  todo.light
# when 4
#  exit
# end

# question [0] "Do you want a ({1}small), ({2}medium), ({3}large) plant?"
# question [1] "Do you want a ({1}easy) or ({2}challenging) plant?"
# question [2] "Do you want a low light or high light plant?"
