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
    return nil if @head.nil?
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
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
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
    while i < index && !current.nil?
      current = current.next
      i += 1
    end
    return nil if current.nil?
    return current.data
  end
end
