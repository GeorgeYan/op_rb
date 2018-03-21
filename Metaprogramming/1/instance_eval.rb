class Rubyist
  def initialize
    @geek = "Hello"
  end
end
obj = Rubyist.new

obj.instance_eval do
  puts self
  puts @geek
end
