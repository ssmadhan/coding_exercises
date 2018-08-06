#!/Users/a4023/.rbenv/versions/2.2.5/bin/ruby
# Given a set of distinct integers, nums, return all possible subsets 
# (the power set).

def subsets(nums)
    subsets = Array.new
    
    for num in nums
       n = subsets.length
       for i in 0..n-1
          temp = Array.new(subsets[i])
          temp << num
          subsets << temp 
       end
       subsets << Array.new(1, num)
    end
    subsets << []
    subsets
end

puts subsets([1, 2, 3])
