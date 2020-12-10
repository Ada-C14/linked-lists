require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?
    length = 0
    current = @head
    until current.nil?
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      return add_first(data)
    end

    last_node = find_last

    newNode = Node.new(data)
    last_node.next = newNode
    return newNode.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    last_node = find_last
    return last_node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    current_index = 0
    until (current_index == index) || (current.nil?)
      current = current.next
      current_index += 1
    end

    return nil if current.nil?

    return current.data
  end

  private

  # Time complexity - O(n)
  # Space complexity - O(1)
  def find_last
    current = @head
    while current.next
      current = current.next
    end
    return current
  end
end
