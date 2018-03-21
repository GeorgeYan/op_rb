class Rubyist
  def initialize(p1,p2)
    @geek, @country = p1, p2
  end
end
obj = Rubyist.new('George', 'USA')
puts obj.instance_variable_get(:@geek)
puts obj.instance_variable_get(:@country)

obj.instance_variable_set(:@country, 'China')
puts obj.inspect
