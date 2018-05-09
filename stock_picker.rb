def stock_picker(arr)
	max = arr[1] - arr[0]
	strick = [0, 1]
	for i in 0...(arr.length-1)
		for j in i+1...(arr.length)
			if arr[j] - arr[i] > max
				max = arr[j] - arr[i]
				strick = [i, j]
			end
		end
	end

	strick
end

puts stock_picker([17,3,6,9,15,8,6,1,10])