# @param {String} s
# @return {String}
def count_and_say_0(s)
    s_idx = 0 
    chunk =[]
    solution = ''
    while  s_idx < s.length
    	chunk << s[s_idx]
    	first = chunk[0]
    	s_idx+=1
    	while s[s_idx] == first
    		chunk << s[s_idx]
            s_idx+=1
        end
        print chunk.join.to_s + "\n"
        solution += chunk.length.to_s
        solution += chunk[0]
        chunk = []
    end
    solution
end

# @param {Integer} n
# @return {String}
def count_and_say(n)
    #generate sequence up to n
    succ = '1' 
    1.upto(n-1) do |i|
        succ = count_and_say_0(succ)
    end
    
    return succ
    
end

