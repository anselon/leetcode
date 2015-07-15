# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
   ans =  nums.group_by { |n| n}.values
   ans.each do |a|
        if a.length < 2
                return a[0]
        end
   end
   return nil
end
