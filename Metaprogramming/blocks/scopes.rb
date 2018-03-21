v1 = 1
class MyClass
  v2 = 2
  p "3: #{local_variables}"

  def my_method
    v3 = 3
    p "4: #{local_variables}"
  end

  p "5: #{local_variables}"
end
obj = MyClass.new
p "1: #{obj.my_method}"
p "2: #{local_variables}"
