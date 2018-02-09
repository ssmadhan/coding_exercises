#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

def binary_search(nums, start, end_ind, target)
    return -1 if start > end_ind
    mid = (start + end_ind)/2
    return mid if nums[mid] == target
    if nums[start] <= nums[mid]
       if target >= nums[start] && target < nums[mid]
           puts("here1")
           puts("searching in #{start} #{mid-1}")
           binary_search(nums, start, mid-1, target)
       else
           puts("here2")
           puts("searching in #{mid+1} #{end_ind}")
           binary_search(nums, mid+1, end_ind, target)
       end
    else
        if target > nums[mid] && target <= nums[end_ind]
            puts("here3")
            puts("searching in #{mid+1} #{end_ind}")
            binary_search(nums, mid+1, end_ind, target)
        else
            puts("here4")
            puts("searching in #{start} #{mid-1}")
            binary_search(nums, start, mid-1, target)
        end
    end
end

def search(nums, target)
    return -1 if nums.length == 0
    binary_search(nums, 0, nums.length-1, target)   
end
puts search([5,1,3], 5)
