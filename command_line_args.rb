if ARGV.length > 0
 flag, *rest = ARGV #flag first, then splat operator will create array, then the rest.
 ARGV.clear
 case flag
 when '-help'
  puts "See further documentation in readme"
  exit
 when '-info'
  puts "This program is using Ruby version: #{RUBY_VERSION}"

 end
end

