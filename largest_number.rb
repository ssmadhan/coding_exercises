#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Given a list of non negative integers, arrange them such that they form the largest number.
#
#     For example, given [3, 30, 34, 5, 9], the largest formed number is 9534330.
#
#         Note: The result may be very large, so you need to return a string instead of an integer.

# @param {Integer[]} nums
# @return {String}


def largest_number(nums)
  n = nums.length
  if n == 1
    return nums[0].to_s
  else
    nums = nums.sort! { |n1, n2| (n2.to_s + n1.to_s) <=> (n1.to_s + n2.to_s) }
  end
  output_str = nums[0].to_s
  i = 1
  while i < n
    if (output_str + nums[i].to_s).to_i > output_str.to_i
      output_str = output_str + nums[i].to_s
    end
    i = i + 1
  end
  return output_str

end