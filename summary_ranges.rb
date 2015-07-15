# @param {Integer[]} nums
# @return {String[]}
#sorted, no duplicates

def summary_ranges(nums)
    
    prev = nums[0]
    ans = Array.new
    #traverse array
    i = 0
    while i < nums.length
        if nums[i] != prev+1
            first = nums[i]
            i+=1
            prev = nums[i-1]
            while nums[i] == prev+1
                prev = nums[i]
                i+=1
            end
            last = prev
            if first == last
                ans << "#{first}"
            else
                ans << "#{first}->#{last}"
            end
            
        end
    end
    return ans

end