# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
#Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
#Output: 7 -> 0 -> 8

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
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
def add_two_numbers(l1, l2)
	carry = 0
	new_sum = 0
    dummy = curr = ListNode.new(0)
    while l1 != nil or l2 != nil or carry != 0
        val = 0 
        if l1 !=nil
            val += l1.val
            l1 = l1.next
        end
        if l2 !=nil 
            val += l2.val
            l2 = l2.next
        end
        val += carry 
        carry = val/10 
        val%=10

        curr.next = ListNode.new(val)
        curr = curr.next
    end
    dummy.next
    
end

