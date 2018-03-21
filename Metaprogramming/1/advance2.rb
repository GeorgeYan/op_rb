class Result
  def total(*scores)
    percentage_calculation(*scores)
  end

  private

  def percentage_calculation(*scores)
    puts "Calculation for #{scores.inspect}"
    scores.inject {|sum, n| sum + n } * (100.0/80.0)
  end
end

def mem_result(obj, method)
  anon = class << obj; self; end
  anon.class_eval do
    mem ||= {}
    define_method(method) do |*args|
      if mem.has_key?(args)
        mem[args]
      else
        mem[args] = super *args
      end
    end
  end
end

r = Result.new
mem_result(r, :total)

puts r.total(5,10,10,10,10,10,10,10)
puts r.total(5,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
puts r.total(10,10,10,10,10,10,10,10)
