class Rubyist
  @@geek = "Ruby's hello"
end

Rubyist.class_variable_set(:@@geek, "World rocks!")
puts Rubyist.class_variable_get(:@@geek)
