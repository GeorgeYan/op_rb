class Rubyist
end
Rubyist.class_eval do
  def who
    "Geek"
  end
end

obj = Rubyist.new
puts obj.who
