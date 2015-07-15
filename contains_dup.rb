# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.group_by{|x| x}.values.each do |ar|
        if ar.length > 1
            return true
        end
    end
    return false
end