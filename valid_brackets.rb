def is_valid(s)
    matches = {"("=>")", "{"=>"}","["=>"]"}
    brackets = s.chars
    stack = Array.new
    
    if s == ''
        return true
    end
    brackets.each do |b|
        if b == '(' or b == '{' or b == "["
            stack << b
        elsif  b == ')' or b == '}' or b == "]"
            print stack
            if b != matches[stack.pop]
                return false
            end
        end
    end
    return stack.empty?


end
s = ""
print is_valid(s)