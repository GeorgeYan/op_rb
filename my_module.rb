module Box
  def self.included(base)
    base.extend(MyClass)
  end

  module MyClass
    def width
      p "hello, width is 200"
    end
  end
  def width
    p "hello , width is 100"
  end
end

class Male
  include Box
end

class Female
  extend Box
end
Male.width
p Male.ancestors
Female.width
p Female.ancestors
