class Rubyist
  def say_no(gender)
    "Hello #{gender}!!"
  end
  private
  def say_hello(name)
    "#{name} rocks!!"
  end
end

obj = Rubyist.new
puts obj.send(:say_hello, 'Hello')
puts obj.public_send(:say_no, 'man')
