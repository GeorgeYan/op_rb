require './support1'
class MyClass
  include MySupport
  def my_method
    MySupport.foo
  end
end

b=MyClass.new
b.my_method
