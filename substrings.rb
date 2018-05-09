def substrings(string, dictionary)
	result = Hash.new(0)
	arr = string.split(' ')
	arr.length.times do |index|
		dictionary.each do |item|
			if arr[index].downcase.include?(item)
				result[item] += 1
			end
		end
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)