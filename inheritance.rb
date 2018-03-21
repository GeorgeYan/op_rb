class Box
  def initialize(w,h)
    @width,@height=w,h
  end

  def getArea
    @width*@height
  end
end

class BigBox < Box
  BIG_DATA=10000
  def getArea
    @area = @width*@height
    p "sdfsdf+#{@area}"
  end
end

big_box = BigBox.new(10,20)
big_box.getArea
p BigBox::BIG_DATA
