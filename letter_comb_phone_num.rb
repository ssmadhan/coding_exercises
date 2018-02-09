#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

$phone_num_arr = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]

def find_letter_combinations(digits, curr_num, n, output, output_arr)

   if curr_num == n
       output_arr << output
   else
      phone_num_arr_idx = digits[curr_num].to_i
      for i in 0..$phone_num_arr[phone_num_arr_idx].length-1
         output[curr_num] = $phone_num_arr[phone_num_arr_idx][i]
         find_letter_combinations(digits, curr_num+1, n, output.dup, output_arr)
      end
   end
       
end

def letter_combinations(digits)
    output = ""
    output_arr = Array.new
    return output_arr if digits.length == 0
    return [$phone_num_arr[digits.to_i]] if digits.length == 1
    n = digits.length
    
    find_letter_combinations(digits, 0, n, output, output_arr)
    
end


