f = File.new("small_text_file.txt", "r")
puts f.gets
f.close
puts "==========================="

#File.open("dummy_data.txt","r").each {|x| puts x.split(",")}
#puts File.open("dummy_data.txt").readlines
#a = File.open("dummy_data.txt", 'r').map {|line| line}
#puts a
#File.open("test.txt", "w") do |f|
  #f.puts "This is a test"
#end

#f = File.new("test.txt", "a")
#f.puts "This is another line"
#f.close
#File.rename("test.txt","powers.txt")
#File.open("new.txt", "w")
#p File.mtime("new.txt")
#
#p File.exist?("new.txt")
#p Dir.pwd

#require "csv"
#CSV.open("dummy_data.csv","r").each do |person|
  #puts person.inspect
#end

