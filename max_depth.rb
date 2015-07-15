# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    if root == nil 
        return 0
    end

    left_height = max_depth(root.left)
    right_height = max_depth(root.right)
    return (left_height > right_height) ? left_height + 1 : right_height + 1
end