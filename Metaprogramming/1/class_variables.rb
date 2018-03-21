class Rubyist
  @@geek = "Ruby's hello"
  @@country = "China"
end

class Child < Rubyist
  @@city = "Nashville"
end

p Rubyist.class_variables
puts
p Child.class_variables
