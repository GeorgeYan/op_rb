class Rubyist
  def method_missing(m, *args, &block)
    puts "Method Missing: Called #{m} with #{args.inspect} and #{block}"
  end

  def hello
    puts "Hello from class Rubyist"
  end
end

class IndianRubyist < Rubyist
  def hello
    puts "Hello from class IndianRubyist"
  end
end
obj = IndianRubyist.new
obj.hello

class IndianRubyist
  remove_method :hello
end
obj.hello

class IndianRubyist
  undef_method :hello
end
obj.hello
