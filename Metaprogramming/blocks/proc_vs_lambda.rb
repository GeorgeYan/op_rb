def double(callable_object)
  p callable_object.call * 2
end

la = lambda{return 10}
double(la)

def another_double
  pr = Proc.new{return 10}
  p  pr
  result = pr.call
  return p result*2
end
another_double
