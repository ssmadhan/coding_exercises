# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    return_list_head = nil
    carry = 0
    
    while l1!= nil || l2!= nil do
       if l1 == nil
           val1 = 0
       else
           val1 = l1.val
       end
       if l2 == nil
           val2 = 0
       else
           val2 = l2.val
       end
       sum = val1 + val2 + carry
       carry = sum/10
       if return_list_head == nil
           return_list_head = ListNode.new(sum%10)
           curr_node = return_list_head
       else
           new_node = ListNode.new(sum%10)
           curr_node.next = new_node
           curr_node = curr_node.next
       end
       l1 = l1.next if l1 != nil
       l2 = l2.next if l2 != nil
    end
    if carry != 0
        new_node = ListNode.new(carry) 
        curr_node.next = new_node
    end
    return_list_head
end
