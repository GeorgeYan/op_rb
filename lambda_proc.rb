def a_method
  ->{return "lambda"}.call
  return "1"
end

def b_method
  Proc.new {return "Proc"}.call
  return "2"
end

def c_method(&block)
  block.call
end

p a_method
p b_method
p c_method{"block"}
