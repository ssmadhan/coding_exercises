#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
# You may assume that the array is non-empty and the majority element always exist in the array.

def majority_element nums
  elem_hsh = Hash.new
  n = nums.length
  nums.each do |num|
    if elem_hsh[num]
      elem_hsh[num] = elem_hsh[num] + 1
    else
      elem_hsh[num] = 1
    end
    if elem_hsh[num] > n/2
      return num
    end
  end
end

puts(majority_element([1]))