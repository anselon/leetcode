# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    if nums.length == 0 
        return 0
    elsif nums.length == 1 
        return nums[0]
    elsif nums.length == 2
        return [nums[0],nums[1]].max
    end
    
    sol = Array.new(nums.length, 0)
    sol[0] = nums[0]
    sol[1] = [nums[0],nums[1]].max
    (2..(nums.length-1)).each do |i|
        sol[i] = [sol[i-1], sol[i-2]+nums[i]].max
    end
    
    return sol[-1]
end