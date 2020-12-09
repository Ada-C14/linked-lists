require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add element.
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def add_first(data)
    if @head
      new_node = Node.new(data)
      new_node.next = @head
      @head = new_node
    else
      @head = Node.new(data)
    end
    return @head
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add element.
  # Space complexity - O(1), no extra variable is used, so it's O(1).
  def get_first
    return @head.data if @head
    return nil
  end

  # Time complexity - O(n), it needs to go over the whole linked list to count the length, so the time complexity is O(n).
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
