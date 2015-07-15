# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    #recursionnnnnnn
  if (l1 == nil) 
      return l2
  end
  
  if (l2 == nil) 
      return l1
  end
  
  if (l1.val < l2.val) 
    l1.next = merge_two_lists(l1.next, l2)
    return l1
  else 
    l2.next = merge_two_lists(l2.next, l1)
    return l2
  end
end