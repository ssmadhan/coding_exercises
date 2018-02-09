#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

#Given an array nums and a target value k, find the maximum length of a subarray that sums to k. If there isn't one, return 0 instead.

#Note:
#The sum of the entire nums array is guaranteed to fit within the 32-bit signed integer range.

#Example 1:

#Given nums = [1, -1, 5, -2, 3], k = 3,
#return 4. (because the subarray [1, -1, 5, -2] sums to 3 and is the longest)

#Example 2:

#Given nums = [-2, -1, 2, 1], k = 1,
#return 2. (because the subarray [-1, 2] sums to 1 and is the longest)

#Follow Up:
#Can you do it in O(n) time? 

def max_sub_array_len(nums, k)
    max_sub_len_arr = Array.new(Array.new())
    max_sub_len = 0
    
    for i in 0..nums.length-1
        max_sub_len_arr[i] = [nums[i]] 
        if nums[i] == k
            max_sub_len = 1
        end
    end
    
    for i in 0..nums.length-2
	for j in 1..nums.length-1
	    max_sub_len_arr[i] << max_sub_len_arr[i][j-1] + nums[j]
       	    if max_sub_len_arr[i][j] == k
		max_sub_len = j-i+1 if j-i+1 > max_sub_len
	    end
        end
    end
    max_sub_len
    
end

puts max_sub_array_len([1,-1,5,-2,3], 3)
