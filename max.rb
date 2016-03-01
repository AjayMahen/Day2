# Find the maximum 
def maximum(arr)
  	x = arr.length
  	if x > 0
		until x == 1 
	  		if arr[x-1] > arr[x-2]
	  			arr.delete_at(x-2)
	  		else
	  			arr.delete_at(x-1)
	  		end
	  		x = arr.length
	  	end
	  	return arr  
  	else
  		return nil
  	end
end


def maximum_b(arr)
	highest = arr.first
	arr.each do |x|
		highest = x > highest ? x : highest
	end
	highest
end

# expect it to return 42 below
result = maximum_b([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"

result = maximum_b([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"

result = maximum([6])
puts "max of just 6 is: #{result}"
