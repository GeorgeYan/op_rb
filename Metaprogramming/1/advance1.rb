class Result
  def total(*scores)
    percentage_calculation(*scores)
  end

  private
  def percentage_calculation(*scores)
    puts "Calculation for #{scores.inspect}"
    scores.inject {|sum,n| sum+n } * (100.0/80.0)
  end
end

r = Result.new

def r.total(*scores)
  @mem ||= {}
  if @mem.has_key?(scores)
    @mem[scores]
  else
    @mem[scores] = super
  end
end

puts r.total(5,10,10,10,10,10,10,10)
puts r.total(5,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
