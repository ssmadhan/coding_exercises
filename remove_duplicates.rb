#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

def remove_duplicates(nums)
    i = 1
    prev_num = nums[0]
    while i < nums.length do
        puts("nums length is #{nums.length}")
        if nums[i] == prev_num
            nums.delete_at(i)
            puts("*** #{nums}")
        else
            prev_num = nums[i]
        end
        i = i + 1
    end
    puts(nums)
    nums.length
end

remove_duplicates([1,1,1])
