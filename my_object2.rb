class Box
  attr_accessor :width,:height
  def initialize(w,h)
    @width,@height=w,h
  end

  #def getWidth
    #@width
  #end

  #def setWidth=(value)
    #@width=value
  #end

  #def getHeight
    #@height
  #end

  #def setHeight=(value)
    #@height=value
  #end
end

box = Box.new(10,20)
p box.width
p box.height
box.width=30
box.height=50
p box.width
p box.height
