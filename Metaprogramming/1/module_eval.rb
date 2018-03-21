class Rubyist
  @@geek = "Ruby's hello"
end
puts Rubyist.class_eval("@@geek")

module Rails
  @@geek = "Rail's world"
end
puts Rails.module_eval("@@geek")
