require_relative 'node'
# helpful resource I used to work on this:
# https://hackernoon.com/implementing-singly-linked-list-with-ruby-om2df3ya6

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) - A node is added to the beginning of the list. Since this is not an array, we are not replacing an element and shifting the rest of the data over.
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    return @head
  end

  # Time complexity - O(1) - We look up the first node (where the head is)
  # Space complexity - O(1)
  def get_first
    return @head.data unless @head.nil?
    return nil
  end

  # Time complexity - O(n) we count n nodes in the list
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n) - need to traverse list of length n to find the last node and add one after that
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if @head.nil?

    current = @head
    current = current.next until current.next.nil?

    current.next = Node.new(data)
    return current.next
  end

  # Time complexity - O(n) - we need to traverse the list of length n to find the last node
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    current = @head
    current = current.next until current.next.nil?
    return current.data
  end

  # Time complexity - O(n) - worst case scenario, we need to iterate through n times to find the node (not a direct look up)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    index.times do
      current = current.next
    end
    return current.data
  end
end
