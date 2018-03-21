class Rubyist
  define_method :hello do |my_arg,&block|
    p my_arg
    p block.inspect
    block.call
  end
end

obj = Rubyist.new
ss = lambda {puts "hello"}
obj.hello('World',&ss)
