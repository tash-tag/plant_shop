class PlantSpecks(name)
 def initialize
  @name = name
  @file_path = "./PlantSpecks/#{name}.txt"
 end

 def size
  puts "#{@name}'s Do you want a ({1}small), ({2}medium), ({3}large) plant?"

  if File.exist?(@file_path)
   File.open(@file_path, 'r') do |file|
    file.each_line do |line|
      puts "#{file.lineno}, #{line}"
    end
   end
  else
   puts "Your file is empty"
   file = File.new(@file_path, 'w')
  file.close
  end #if exist
 end

def easy
 puts "Do you want a ({1}easy) or ({2}challenging) plant?"
end

def light
 puts "Do you want a low light or high light plant?"
end

end