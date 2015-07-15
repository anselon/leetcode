# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)  
    if num_rows == 1
        return s 
    end
    answer = ""
    (0..num_rows-1).each do |i|
        count = i
        step1 = 2*(num_rows-1-i)
        step2 = 2*i
        while count < s.length
            answer<< s[count]
            if step1>0 and step2>0 and (count+step1)<s.length
                count+=step1
                answer << s[count]
                count+=step2
            else
                count+=(step1+step2)
            end
        end
    end

    return answer

end