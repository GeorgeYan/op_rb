class BubbleSort
  def my_sort(arr)
    0.upto(arr.length-1) do
      for i in 0..arr.length-2
        if arr[i] < arr[i+1]
          arr[i], arr[i+1]=arr[i+1], arr[i]
        end
      end
    end
    arr
  end
end
arr = [1,5,8,9,2,5,2,3,7]
s = BubbleSort.new
p s.my_sort(arr)
