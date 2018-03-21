def three_ways(proc, lambda, &block)
  proc.call
  lambda.call
  yield
  puts "#{proc.inspect} #{lambda.inspect} #{block.inspect}"
end
anonymous = Proc.new { puts "I'm a Proc for sure."}
nameless = lambda { puts "I'm a lambda for sure."}

three_ways(anonymous, nameless) do
  puts "I'm a block, but could it be??"
end
