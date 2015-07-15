# @param {Integer} x
# @return {Integer}
#x = 123 => 321
def reverse(x)
    neg = 1
    y = 0
    if x < 0
        x = x*(-1)
        neg = -1
    end
    
    while x > 0 do
        y = y*10
        y = y + (x%10)
        x = x/10 
    end
    y = neg*y
    if y > (2**31)-1 or y < (-1*2**31)
        return 0
    end
    
    return y

    
    
end