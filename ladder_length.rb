#!/Users/smadhan/.rvm/rubies/ruby-2.3.1/bin/ruby

def isAdjacent(word, dictWord)
   count = 0
   for i in 0..word.length-1
      if word[i] !=  dictWord[i]
          count = count + 1
          return false if count > 1
      end
   end
   return true

end

def ladder_length(begin_word, end_word, word_list)
    word_queue = Array.new()
    word_hsh = {word: begin_word, num_steps: 1}
    word_queue << word_hsh
    word_list.delete(begin_word)    
    while word_queue.length > 0
        word_hsh = word_queue.shift
        word = word_hsh[:word]
        num_steps = word_hsh[:num_steps]
        if word == end_word
            return num_steps
        else
            puts("here")
            j = 0
            while j < word_list.length
                dict_word = word_list[j]
                if dict_word != word && isAdjacent(word, dict_word)
                   puts("word id #{dict_word}")
                   word_queue << {word: dict_word, num_steps: num_steps + 1}
                   word_list.delete(dict_word)
                   if dict_word == end_word
			return num_steps + 1
		   end
                else
		   j = j + 1
                end
            end
        end

    end
    return 0    
end

puts ladder_length('a', 'c', ['a','b','c'])
