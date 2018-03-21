class Singleton
  class << Singleton
    def singleton_method
      puts "singleton"
    end
  end
end
Singleton.singleton_method
module A
  def use
    puts "A"
  end
end

class B
  extend A
end
B.use

class C
  def pre
    a = lambda { return "lambda"}
    a.call
    return "llll"
  end
end

class D
  def pre
    a = proc do
      return "Proc"
    end
    a.call
    return "pppp"
  end
end
p C.new.pre
p D.new.pre

class E
  def pre(&block)
    block.call
  end
end
p E.new.pre{"Hello World"}
