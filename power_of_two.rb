# @param {Integer} n
# @return {Boolean}
def is_power_of_two_old(n)
    if n == 1 
        return true
    end
    while n > 2
        if n%2 != 0 
            return false
        end
        n = n/2
    end
    if n!=2 
        return false
    else 
        return true
    end
    
end

def is_power_of_two(n)
 
    return ((n>0) and (n & (n-1))==0)
    
end
