params = {"k" => 30, "v" => 20}
arr = []
params.map do |k,v|
  arr << k << "&" << v
end
sb = arr.join.to_s
puts sb
