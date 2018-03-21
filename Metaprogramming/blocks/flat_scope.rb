my_var = "Success"

MyClass = Class.new do
  puts "#{my_var} in the class definition!"

  define_method :my_method do
    puts "#{my_var} in the method!"
  end
end
MyClass.new.my_method

YouClass = Class.new do
  define_method :you_method do
    puts "you_method"
  end
end

a = YouClass.new
a.you_method
