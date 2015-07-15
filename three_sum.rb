# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    
    num_table = {}
    len = nums.length
    if len <= 2
        return []
    end
    num_table = Hash.new([])
    nums.each_with_index do |n, i|
        num_table[n] += [i]
    end
    #create table of sums first then throw out duplicates?
    ans = {}
    nums.each_with_index do |n, i|
        ((i+1)..(len-1)).each do |j|
            if num_table.has_key? (0 - (n + nums[j]))
                unique = true 
                #check that indexes are unique
                vals = [n, nums[j], (0 - (n + nums[j]))].group_by{|x| x}.values
                vals.each do |dups|
                    if num_table[dups[0]].length <= dups.length
                        unique = false
                    end
                end
                if unique == true
                	solution = [n, nums[j],(0 - (n + nums[j])) ].sort
                    ans[solution] = 1
                end
            end
        end
    end
    return ans.keys
    
end
p three_sum([])