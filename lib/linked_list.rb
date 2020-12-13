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

  # Time complexity - O(n), where n is the length of linked list
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?

    count = 0
    current = @head

    while current
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n), where n is the length of linked list
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      last_node = Node.new(data)

      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = last_node
    end
  end

  # Time complexity - O(n), where n is the length of linked list
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?

    current = @head
    until current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n), where n is value of index
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head
    count = 0

    until count == index
      return nil if !current
      current = current.next
      count += 1
    end

    return current.data
  end
end
