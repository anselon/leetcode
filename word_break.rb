def word_break(s, word_dict)
    #parse s
    pos_word = ''
    solution = Array.new
    len_solution = 0
    
    sol = word_break(s, word_dict) + word_break(s[i-1], word_dict)
    s.chars.each_with_index do |char, idx|
        #with each additional char
        pos_word += char
        
        #check if this possible word is in the dict
        if word_dict.include? pos_word
            solution << pos_word
            len_solution += pos_word.length
            pos_word = ''
        end
    end
    print solution
    return len_solution == s.length
        
        
end
print word_break("aaa aaaaa", ["aaaaa","aaa"])