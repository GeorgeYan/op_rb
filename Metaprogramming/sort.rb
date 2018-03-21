arr = [2,3,4231,12,32,532,23,44,22]
def bsort(arr)
  0.upto(arr.size-1) do
    for i in 0..arr.size-2
      if arr[i]>arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
  end
  arr
end
puts bsort(arr)
