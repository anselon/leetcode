# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    if head == nil
        return nil
    end
    prev = nil
    cur = head
    
    while cur != nil
        nex = cur.next
        cur.next = prev
        prev = cur
        cur = nex
    end
    
    return prev

end