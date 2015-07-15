# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    (0..k-1).each do
        n = nums.pop
        nums.unshift(n)
    end
    nil
    
end

