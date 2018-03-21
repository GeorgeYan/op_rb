require 'minitest/autorun'
class MyClass
  define_method :my_method do |my_arg|
    my_arg * 3
  end
end

obj = MyClass.new
obj.my_method(2)

class TestNumber < Minitest::Test
  def test_num
    assert_equal 6, MyClass.new.my_method(2)
  end
end

