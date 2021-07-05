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
    # new_node = Node.new(data)
    # new_node.next = @head
    # @head = new_node
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
    return 0 if head.nil?

    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      self.add_first(data)
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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if index > self.length

    current = @head
    counter = 0

    until current.nil?
      if counter == index
        return current.data
      else
        current = current.next
        counter += 1
      end
    end
  end

end
