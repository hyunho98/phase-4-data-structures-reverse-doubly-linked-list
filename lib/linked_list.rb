require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    self.tail = head
    self.head = reverse_node(head)
  end

  def reverse_node(node)
    if node.nil?
      return
    end

    temp = node.next_node
    node.next_node = node.prev_node
    node.prev_node = temp

    if node.prev_node.nil?
      return node
    end

    reverse_node(node.prev_node)
  end
end
