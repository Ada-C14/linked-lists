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
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    last = Node.new(data)
    if @head.nil?
      @head = last
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
    current.next = last
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
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    until index == 0
      return nil if current.nil?
      current = current.next
      index -= 1
    end
    return current.data
    
end
