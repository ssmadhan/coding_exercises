#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
#     You may assume that each input would have exactly one solution.
#
#         Example:
#
#     Given nums = [2, 7, 11, 15], target = 9,
#
#           Because nums[0] + nums[1] = 2 + 7 = 9,
#     return [0, 1].
def get_pair(input_arr, target)
  input_hsh = Hash.new
  output_arr = Array.new
  i = 1
  input_arr.each do |elem|
    input_hsh[elem] = i
    i = i + 1
  end
  puts(input_hsh)
  i = 1
  input_arr.each do |elem|
    num = (target - elem).abs
    puts("num is #{num}")
    if input_hsh[num] && i != input_hsh[num]
      puts("#{num} exists in hash")
      output_arr << i - 1
      output_arr << input_hsh[num] - 1
      break
    end
    i = i + 1
  end

  return output_arr

end

puts(get_pair([3, 2, 4], 6))