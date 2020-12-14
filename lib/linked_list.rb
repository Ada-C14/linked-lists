require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_first(data)
    node = Node.new(data, head)
    @head = node

  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_first
    head&.data #& means only access data if head is not nil
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    count = 0
    node = head

    while !node.nil?
      count += 1
      next_node = node.next
      node = next_node
    end
    count
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    return add_first(data) if head.nil?

    node = head
    while !node.next.nil?
      next_node = node.next
      node = next_node
    end

    node.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    return if head.nil?

    node = head
    while !node.next.nil?
      next_node = node.next
      node = next_node
    end
    node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    count = 0
    node = head
    while count < index
      return if node.nil?
      node = node.next
      count += 1
    end

    node.data
  end
end
