#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Given a string S and a string T, find the minimum window in S which will contain all the characters in T in complexity O(n).
#
#     For example,
#         S = "ADOBECODEBANC"
# T = "ABC"
#
# Minimum window is "BANC".
#
#     Note:
#     If there is no such window in S that covers all characters in T, return the empty string "".
#
#     If there are multiple such windows, you are guaranteed that there will always be only one unique minimum window in S.

def arr_includes(arr1, arr2)
  temp_arr2 = arr2.dup
  return false if arr2.length == 0
  arr1.each do |num|
    if temp_arr2.include? num
      index = temp_arr2.index(num)
      temp_arr2.delete_at(index)
    else
      return false
    end
  end
  return true
end

def min_window(s, t)
  i = 0
  j = 1
  n = s.length
  s_arr = s.split('')
  t_arr = t.split('')
  temp_arr = Array.new
  temp_arr.push(s_arr[0])
  output_str = ''
  if s == t
    return s
  end
  while i < n  do
    if arr_includes(t_arr, temp_arr)
      if output_str == ''
        output_str = temp_arr.join('')
      else
        if output_str.length > temp_arr.length
          output_str = temp_arr.join('')
        end
      end
      temp_arr = Array.new
      i = i + 1
      j = i
    elsif j < n
        temp_arr.push(s_arr[j])
        j = j + 1
    else
      break
    end
  end
  return output_str
end

puts(min_window('a', 'aa'))