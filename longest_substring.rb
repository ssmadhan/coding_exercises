#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Longest Substring Without Repeating Characters
#
# Given a string, find the length of the longest substring without repeating characters.
#
#     Examples:
#
#     Given "abcabcbb", the answer is "abc", which the length is 3.
#     Given "bbbbb", the answer is "b", with the length of 1.
#     Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

def longest_substring(s)
  substr_arr = Array.new
  j=0
  n = s.length
  max_len = 0
  while j < n
    if substr_arr.include? s[j]
      substr_arr.shift
    else
      substr_arr << s[j]
      j = j + 1
      max_len = [max_len, substr_arr.length].max
    end
  end
  return max_len
end

puts(longest_substring('bbbbb'))