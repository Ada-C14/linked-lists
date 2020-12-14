require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity O(1)
  # Space complexity O(1)
  def add_first(data)
    a = Node.new(data)
    a.next = @head
    @head = a
  end

  # Time complexity - O(1)
  # Space complexity - O(0)????
  def get_first
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
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
    current = @head
    until current.nil?
      current = current.next
    end
    current = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(index)
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    i = 0
    while i < index
      current = current.next
      i += 1
    end
    return current.data
  end
end
