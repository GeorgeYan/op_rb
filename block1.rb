def my_block
  yield 1,100
end
my_block { |a,b|  p "This number is #{1} + #{100}"}

def call_block(&block)
  block.call
end

call_block { p "hello world"}
