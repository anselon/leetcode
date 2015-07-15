# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < 0 
        return false
    end
    
    return x == reverse(x)
    
end

def reverse(x)

    str = x.to_s
    neg = 1
    if str[0] == "-"
        neg = -1
        str.delete!("-")
    end
    ans = (str.chars.reverse.join.to_i * neg)
    
    if ans > (2**31)-1 or ans < (-1*2**31)
        return 0
    end
    
    return (ans)

    
    
end