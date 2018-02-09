#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby

#Follow up for "Remove Duplicates":
#What if duplicates are allowed at most twice?

#For example,
#Given sorted array nums = [1,1,1,2,2,3],

#Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3. It doesn't matter what you leave beyond the new length. 

def remove_duplicates(nums)
    
    return nums.length if nums.length <= 2
    prevNum = nums[0]
    i = 1
    arrLength = 1
    dupCount = 1
    while i<nums.length do
        if nums[i] == prevNum && dupCount < 2
            dupCount = dupCount + 1
            arrLength = arrLength + 1
        elsif nums[i] != prevNum
            prevNum = nums[i]
            dupCount = 1
            arrLength = arrLength + 1
        end
        i = i + 1
    end
    
    puts(arrLength)
    
end

remove_duplicates([1,1,1,2])
