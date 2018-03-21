my_var = "Success"
MyClass = Class.new do
  "#{my_var} in the class definition"
  define_method :my_method do
    "#{my_var} in the method"
  end
end

MyClass.new.my_method

require 'test/unit'
class TestSimple < Test::Unit::TestCase
  def test_method
    assert_equal "Success in the method" , MyClass.new.my_method
  end
end
