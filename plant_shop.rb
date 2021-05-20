puts "Welcome to the indoor plant shop"
puts "What is your name?"
name = gets.chomp()
puts ("Hello " + name + ", please answer some questions to find your perfect plant match.")


questions = ["Question 1", "Question 2", "Question 3"]
answers = []
questions.each do |question|
 puts question
 answers << gets.strip
end

question 1 "Do you want a ({1}small), ({2}medium), ({3}large) plant?"
question 2 "Do you want a ({1}easy) or ({2}challenging) plant?"
question 3 "Do you want a low light or high light plant?"
