require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.nil? ? @head : @head.data
  end

  # Time complexity - 0(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?

    count = 0
    current = @head
    while current != nil
      count = count + 1
      current = current.next
    end
    return count
  end

  # Time complexity -0(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      last = Node.new(data)
      current = @head

      while current.next
        current = current.next
      end
      current.next = last
    end
  end

  # Time complexity -0(n)
  # Space complexity - O(1)
  def get_last
    return @head if @head.nil?

    current = @head
    while current.next
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity -  O(1)
  def get_at_index(index)
    current = @head
    count = 0

    until current.nil?
      if index == count
        return current.data
      else
        current = current.next
        count = count + 1
      end
    end
  end
end