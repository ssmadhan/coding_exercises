#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

def multiply(num1, num2)
    return 0 if num1.to_i == 0 || num2.to_i == 0
    num2_arr = num2.split('')
    
    result = 0
    mult_factor = 10
    
    for i in 0..num2_arr.length-1
       temp = num2_arr[i].to_i*num1.to_i
       if i > 0
          temp = temp*mult_factor
          mult_factor = mult_factor*10
       end
        result = result + temp
       
    end
    result.to_s
    
end

puts multiply('33','55')
