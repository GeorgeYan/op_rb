class_name = "rubyist".capitalize
Object.const_set(class_name, Class.new)

class_name = Object.const_get(class_name)
puts class_name

class_name.class_eval do
  define_method :who do |my_arg|
    my_arg
  end
end

obj = class_name.new
puts obj.who('George')
