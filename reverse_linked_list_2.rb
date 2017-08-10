#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby
# Reverse a linked list from position m to n. Do it in-place and in one-pass.
#
#     For example:
#     Given 1->2->3->4->5->NULL, m = 2 and n = 4,
#
#     return 1->4->3->2->5->NULL.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)

  return nil if head == nil
  return head if head.next == nil
  node1Prev, node1Next, node2Next, prevNode, node1Node = nil
  i = 1
  while head != nil do
    if i == m
      node1Prev = prevNode
      node1Next = head.next
      node1Node = head
    elsif i == n
      if node1Prev != nil
        node1Prev.next = head
      end
      node2Next = head.next
      head.next = node1Next
      prevNode.next = node1Node
      node1Node.next = node2Next
    else
      prevNode = head
      i = i + 1
      head = head.next
    end
  end
  return head

end