
require_relative 'command_line_args'
require_relative 'plant_specks'
require_relative 'plant_list'

require 'colorize'
require 'rspec'
require 'tty-prompt'
require 'artii'



#When the program starts there will be a welcome message and it will ask for users name.
def welcome
 puts "Welcome to the indoor plant shop."
 puts "What is your name?".colorize(:yellow)
 print ">"
 user_name = gets.chomp()
 validate_name(user_name)
 puts ("Hello " + user_name + ", please answer some questions to find your perfect plant match.")
 user_name
end

#raise an argument error

 def validate_name(name)
  begin
   name = name.strip #trim whitespace 
   raise ArgumentError.new "Name must not be empty"if name.empty?
  rescue ArgumentError => e
   puts e 
   print "Enter valid name:"
   name = gets.chomp
  end
 end
# end
 
#asking the user what they want to do first 
def menu(decision)
 puts "Please select from the following list:"
 puts "1. Start with the plant enquiry?" 
 puts "2. Print a copy of all of the plants and their prices?"
 puts "3. Exit"
 puts
 print ">"
end


#ask the user for info on their plant choices
def questions(plant_selection)
 puts "What size plant do you want, small, medium or large?"
 print ">"
 plant_selection.answers[0] = gets.chomp 
 puts "Do you want easy or challenging?"
 print ">"
 plant_selection.answers[1] = gets.chomp 
 puts "Do you want a plant for high light or low light?"
 print ">"
 plant_selection.answers[2]= gets.chomp
end






#--------------------------------------------
#start of program
#--------------------------------------------
system 'clear'

name = welcome

menu

case gets.to_i
when 1
 puts "Start with the plant enquiry?"
when 2
 puts "Print a copy of all of the plants and their prices?"
when 3
 puts "Quit"
end

plant_selection = PlantSpecks.new(name)

questions(plant_selection)

plant_selection.plant_suggest

plant_print = Plantlist.new

plant_choice.plant_print




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

# end

# def menu
#  puts "Please select from the following options:", "1. Start with the main questions to find your perfect plant match", "2. Print out a list of all the plants available", "3. Exit the program"
 # gets 