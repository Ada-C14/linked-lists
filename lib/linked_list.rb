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
    return @head ? @head.data : nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    count = 0

    until current.nil?
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      add_first(data)
      return
    end

    current = @head
    until current.next.nil?
      current = current.next
    end

    current.next = Node.new(data)
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
    return nil if @head.nil? || index >= self.length

    count = 0
    current = @head

    until current.nil?
      if count == index
        return current.data
      else
        current = current.next
        count += 1
      end
    end
  end
end
