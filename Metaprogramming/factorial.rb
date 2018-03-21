def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end
puts factorial(10)
puts "======================"

def palindrome(str)
  if str.length == 1 || str.length == 0
    true
  else
    if str[0] == str[-1]
      palindrome(str[1..-2])
    else
      false
    end
  end
end
puts palindrome("asdsa")
puts "======================"

def recursion(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    recursion(n-1)
  end
end
puts recursion(10)
puts "======================"

def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end
puts fibonacci(8)
puts "======================"

def flatten(arr, result=[])
  arr.each do |element|
    if element.kind_of? Array
      flatten(element, result)
    else
      result << element
    end
  end
  result
end
arr = [[1, [8, 9]], [3, 4]]
puts arr.flatten
puts "======================"

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end
puts integer_to_roman(roman_mapping, 3)
puts "======================"

mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}
def roman_to_integer(roman_mapping, str, result = 0)
  return result if str.empty?
  roman_mapping.keys.each do |roman|
    if str.start_with?(roman)
      result += roman_mapping[roman]
      str = str.slice(roman.length, str.length)
      return roman_to_integer(roman_mapping, str, result)
    end
  end
end
puts roman_to_integer(mapping, "M")
