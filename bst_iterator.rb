#!/Users/smadhan/.rvm/rubies/jruby-9.0.5.0/bin/ruby

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator
  # @param {TreeNode} root
  def initialize(root)
    @@nodeList = Array.new
    @@nodeList.push(root) if root != nil
  end

  # @return {Boolean}
  def has_next
    if @@nodeList.length > 0
      return true
    else
      return false
    end
  end

  # @return {Integer}
  def next
    currNode = @@nodeList.pop
    if currNode.left != nil
      val = currNode.left.val
      @@nodeList.push(currNode)
      @@nodeList.push(currNode.left.right) if currNode.left.right != nil
    else
      val = currNode.val
      @@nodeList.push(currNode.right) if currNode.right != nil
    end
    return val
  end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end