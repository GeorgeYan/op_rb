a = [1, 2, 3]
b = ["a", "b", "c"]
=begin
result = []
a.each do |x|
  b.each do |y|
    result.push "#{x}#{y}"
  end
  result.join(",")
end
puts result
=end
h = {}
a.each_with_index do |number, index|
  h[number] = b[index]
end
puts h
puts "==========================================="

class Super
  def self.info
    "This is a awesome class method"
  end

  def add(a,b)
    a+b
  end
end
puts Super.info
obj = Super.new
puts obj.add(1,2)
puts "==========================================="

class Fixnum
  def echo
    puts self
  end
end
(1..100).each(&:echo)
puts "==========================================="
def linear_search(value, array)
  counter = 0
  while counter < array.length
    if array[counter] == value
          return counter
         else
            counter += 1
      end
  end
  "Value not found"
end
puts linear_search(1,[1,2,3,4,5])
