#When the program starts there will be a welcome message and it will ask for users name.
require_relative 'plant_specks'
require_relative 'plant_list'
require 'colorize'
require 'rspec'
require 'tty-prompt'
require 'artii'

def welcome
 puts "Welcome to the indoor plant shop.".colorize(:yellow)
 puts "What is your name?"
 print ">"
 user_name = gets.chomp()
 validate_name(user_name)
 puts ("Hello " + user_name + ", please answer some questions to find your perfect plant match.")
 user_name
end

#specify an exception type
def validate_name(name)
 name = name.strip 
 raise ArgumentError, "Name must not be empty" if name.empty?
 name
end

#ask user for plant requirements.
# def 
# questions = ["Question 1", "Question 2", "Question 3"]
# answers = []
# questions.each do |question|
#   puts question
#   answers << gets.strip
#  end
# end


def questions(plant_selection)
puts "What size plant do you want, small, medium or large?"
 print ">"
 plant_selection.answers[0] = gets.chomp
puts "Do you want easy or challenging?"
print ">"
plant_selection.answers[1] = gets.chomp
puts "Do you want a plant for high light or low light?"
print ">"
plant_selection.answers[2] = gets.chomp
end


#--------------------------------------------
#start of program
#--------------------------------------------
system 'clear'

name = welcome

plant_selection = PlantSpecks.new(name)

# validate_name

questions(plant_selection)

plant_selection.plant_suggest


# name = gets.strip.downcase

# todo = PlantSize.new(name)

# loop do plant_specks
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
