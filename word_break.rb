def word_break(s, word_dict)
    #parse s
    length = s.length
    if length == 0 
        return false
    end
    sol = []
    sol << -1
    (0..length-1).each do |i|
        print sol.reverse
        for j in sol.reverse
            if word_dict.include? s[j+1..i]
                sol << i
               
                break
            end
        end
    end
    print sol
    return sol.include? length-1

end
print word_break("aaaaaaaa", ["aaaaa","aaa"])