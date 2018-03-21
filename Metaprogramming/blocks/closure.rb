def my_method
  x = "Goodbye"
  yield("cruel")
end
x = "Hello"
my_method {|y| p "#{x}, #{y} world"}

def sb
  yield
end

sb do
  puts "fuck"
end

sb { puts "you"}
