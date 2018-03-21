class BubbleSort
  def sort(arr)
    for i in 0..arr.length-1
      for j in 0..arr.length-2
        if arr[i] > arr[j]
          arr[i],arr[j]=arr[j],arr[i]
        end
      end
    end
    arr
  end

  def upsort(arr)
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
arr = [2,5,1,3,6,3,1,10,23,24,22]
b = BubbleSort.new
p b.sort(arr)
puts
p b.upsort(arr)
