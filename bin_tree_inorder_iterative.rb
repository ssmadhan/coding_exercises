# Given a binary tree, return the inorder traversal of its nodes' values.
#
# For example:
# Given binary tree [1,null,2,3],
#
#    1
#     \
#      2
#     /
#    3
#
# return [1,3,2].
#
# Note: Recursive solution is trivial, could you do it iteratively?

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  ret_arr = Array.new
  return ret_arr if root == nil

  node_stack = Array.new
  node_stack.push(root)

  while !node_stack.empty? do
    node = node_stack.pop
    if node.left != nil
      node_stack.push(node)
      node_stack.push(node.left)
      node.left = nil
    else
      ret_arr.push(node.val)
      if node.right != nil
        node_stack.push(node.right)
      end
    end
  end
  return ret_arr

end