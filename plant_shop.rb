puts "Welcome to the indoor plant shop"


questions = ["Question 1", "Question 2", "Question 3"]
answers = []
questions.each do |question|
 puts question
 answers << gets.strip
end

Question 1 = "Do you want a ({1}small), ({2}medium), ({3}large) plant?"
Question 2 = "Do you want a ({1}easy) or ({2}challenging) plant?"
Question 3 = "Do you want a low light or high light plant?"
