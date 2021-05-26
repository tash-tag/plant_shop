

class PlantSpecks
 # attr_accessor :answers
 # def initialize(name)
 #  @name = name
 #  @file_path = "./PlantSpecks/#{name}.txt"
 #  @answers = []
 # end

 # def size
 #  puts "#{@name}'s Do you want a ({1}small), ({2}medium), ({3}large) plant?"

 #  if File.exist?(@file_path)
 #   File.open(@file_path, 'r') do |file|
 #    file.each_line do |line|
 #      puts "#{file.lineno}, #{line}"
 #    end
 #   end
 #  else
 #   puts "Your file is empty"
 #   file = File.new(@file_path, 'w')
 #  file.close
 #  end #if exist
 # end

 
# calling a plant selection to print to user

def plant_suggest 
object = Plantlist.new
pp object.plant_choice.select {|hash| (hash.values & answers) == answers}

end

end