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
    return @head ? @head.data : nil
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    count = 0
    current = @head

    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = new_node
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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    index.times do
      if current.next.nil?
        return nil
      else
        current = current.next
      end
    end
    return current.data
  end
end
