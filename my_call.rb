class MyCall
  private
  def my_private
    puts "Hello World"
  end
end

obj=MyCall.new
obj.send(:my_private)
