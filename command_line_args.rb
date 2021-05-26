if ARGV.length > 0
 flag, *rest = ARGV #flag first, then splat operator will create array, then the rest.
 ARGV.clear
 case flag
 when '-gems'
  puts "This program is using gems - colorize, rspec, ttyprompt and artii"
  exit
 when '-info'
  puts "This program is using Ruby version: #{RUBY_VERSION}"
  exit
 else 
  puts "Invalid argument, see readme for options"
  
 end
end

