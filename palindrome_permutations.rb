#!/Users/a4023/.rbenv/versions/2.2.5/bin/ruby
# Given a string, determine if a permutation of the string could form a palindrome.
# Example 1:
#Input: "code"
#Output: false

#Example 2:
#Input: "aab"
#Output: true

def can_permute_palindrome(s)
    char_count = Hash.new {0}
    
    for char in s.chars
       char_count[char] += 1
    end
    num_single_char = 0
    for k,v in char_count
        num_single_char += 1 if v %2 != 0
	return false if num_single_char > 1
    end
    return true
end

if can_permute_palindrome('aab')
    puts "true"
else
    puts "false"
end
