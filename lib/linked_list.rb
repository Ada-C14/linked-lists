require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add element.
  # Space complexity - O(1), the extra variables are constant, so it's O(1).
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      @head.next = new_node
      @head = new_node
    end
    return @head
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add element.
  # Space complexity - O(1), no extra variable is used, so it's O(1).
  def get_first
    return @head.data if @head
    return nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
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
