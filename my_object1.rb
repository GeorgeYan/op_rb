class Box
  def initialize(w,h)
    @width,@height=w,h
  end

  def getWidth
    @width
  end

  def getHeight
    @height
  end
end

box = Box.new(2,10)
p box.getWidth
p box.getHeight
