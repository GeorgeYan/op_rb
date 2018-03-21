class Box
  def initialize(w,h)
    @width,@height=w,h
  end

  def to_s
    "(w:#{@width},h:#{@height})"
  end

  private
  def my_box
    p "my_box"
  end
end

box = Box.new(10,20)
p box.to_s
box.send(:my_box)
