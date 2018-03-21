class Result
  def total(*scores)
    percentages_calculation(*scores)
  end

  private

  def percentages_calculation(*scores)
    puts "Calculation for #{scores.inspect}"
    scores.inject {|sum,n| sum + n} * (100.0/80.0)
  end
end

r = Result.new
puts r.total(5,10,10,10,10,10,10,10)
puts r.total(5,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
