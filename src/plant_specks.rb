
class PlantSpecks
 attr_accessor :answers
 def initialize(name)
  @name = name
  @file_path = "./PlantSpecks/#{name}.txt"
  @answers = []
 end

# calling a plant selection to print to user
 def plant_suggest 
 object = Plantlist.new
 pp object.plant_choice.select {|hash| (hash.values & answers) == answers}

 end

# calling the plant hash to print all plant names and prices
 def plant_print
  object = Plantlist.new
  p object.plant_choice.map {|hash| hash.values [3], [4]}.uniq

 end
end


class List
 def initialize(name)
  @name = name
 end

 def enquiry
  puts "Start with the plant enquiry"
 end

 def prices
 puts "Print a copy of all of the plants and their prices"
 end

 def exit
 puts "Quit"
 end
end


#END
# def recruits_names
#  names = []
#  for r in self.referrals do
#    names << r.display_name
#  end
#  return names
# end

# def recruits_names
#  self.referrals.map { |r| r.display_name }
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