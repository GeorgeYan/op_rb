begin
  file = open("a_file")
  if file
    p "file open successfully"
  end
rescue
  file = "error"
end
p file


begin
  raise "Error Message111"
rescue Exception => e
  puts e.message
end
