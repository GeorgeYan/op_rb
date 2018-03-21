class QuickSort
	def qsort(list)
		return [] if list.size == 0
		x, *xs = *list
		less, more = xs.partition{|y| y < x}
		qsort(less) + [x] + qsort(more)
	end
end
arr = [1,5,8,9,2,5,2,3,7]
s = QuickSort.new
p s.qsort(arr)