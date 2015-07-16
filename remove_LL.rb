# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
   prev = nil
   curr = head
   if head == nil 
       return []
   end
   
   while curr != nil
        if curr.val == val
            if curr == head
                head = head.next
                curr = curr.next
                next
            else
                prev.next = curr.next
            end
        end
        prev = curr
        curr = curr.next
        print curr.val
    end
    return head
    
    