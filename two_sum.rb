# Given an array of integers, find two numbers such that they add up to a specific target number.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    indexes = Hash.new
    #create hash of value to index
    nums.each_with_index do |n, i|
        indexes[n] = i
    end
    #search hash table for appropriate values
    nums.each_with_index do |n, i|
        if indexes.has_key? (target - n) and (indexes[target-n] != i)
            return [i+1,indexes[target-n]+1]
        end
    end

end