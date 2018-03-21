require 'benchmark'
class BubbleSort
  def my_method(arr)
    0.upto(arr.length-1) do
      for i in 0..arr.length-2
        if arr[i] < arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
        end
      end
    end
    arr
  end
end
arr = [1,3,2,5,12,62,22,43,74]
p BubbleSort.new.my_method(arr)

Benchmark.bm do |bm|
  bm.report do
    1000000.times {BubbleSort.new.my_method(arr)}
  end
end
