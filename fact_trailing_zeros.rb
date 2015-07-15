# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    inc = 1
    ans = 0
    while n >= 5**inc 
        ans += (n/5**inc)
        inc +=1
    end

    return ans
end