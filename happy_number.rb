# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    sum = 0 
    prev = Array.new
    while not prev.include? n
        prev << n
        if n == 1 
            return true
        else
            while(n > 0)
                sum += ((n%10)**2)
                n = n/10
            end
            n = sum
            sum = 0
        end
    end
    return false
        
    
    
end