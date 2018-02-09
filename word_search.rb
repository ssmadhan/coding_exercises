#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

def found_at_pos(board, word, i, j, visited_arr)
   puts("#{word} #{board[i][j]}")
   puts(word.length)
   return false if word[0] != board[i][j]
   return true if word.length == 1
    hash_key = "#{i},#{j}"
   visited_arr[hash_key] = 1
    
   rows = board.length
   cols = board[0].length
       
   strlen = word.length
   hash_key = "#{i-1},#{j}"
   if i-1 >= 0 && !visited_arr[hash_key]
       return true if found_at_pos(board, word[1..strlen-1], i-1, j, visited_arr)
   end
    
   hash_key = "#{i+1},#{j}"
   if i+1 < rows && !visited_arr[hash_key]
       return true if found_at_pos(board, word[1..strlen-1], i+1, j, visited_arr)
   end
    
   hash_key = "#{i},#{j-1}"
   if j-1 >= 0 && !visited_arr[hash_key]
       return true if found_at_pos(board, word[1..strlen-1], i, j-1, visited_arr)
   end
    
   hash_key = "#{i},#{j+1}"
   if j+1 < cols && !visited_arr[hash_key]
       return true if found_at_pos(board, word[1..strlen-1], i, j+1, visited_arr)
   end   
    
end

def exist(board, word)
    rows = board.length
    return false if rows == 0
    cols = board[0].length
    
    for i in 0..rows-1
        for j in 0..cols-1
            visited_arr = Hash.new
            if found_at_pos(board, word, i, j, visited_arr)
                return true
            end
        end
    end
    
    return false
    
end

exist([["A","B","C","E"],["S","F","E","S"],["A","D","E","E"]], "ABCESEEEFS")
