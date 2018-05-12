def bubble_sort(arr)
	for i in 0...(arr.length)-1
		for j in (i+1)...arr.length
			if arr[j] < arr[i]
				temp = arr[i]
				arr[i] = arr[j]
				arr[j] = temp
			end
		end
	end
	puts arr
end

bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
	for i in 0...(arr.length) - 1
		for j in (i+1)...(arr.length)
			val = yield(arr[i], arr[j])
			if val > 0 
				temp = arr[i]
				arr[i] = arr[j]
				arr[j] = temp
			end
		end
	end

	puts arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	left.length - right.length
end

