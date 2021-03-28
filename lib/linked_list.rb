require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @last = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head # head already exists, need to reassign it
      new_node = Node.new(data)
      new_node.next = @head
      @head = new_node
    else # head is nil, assign the new node to it
      @head = Node.new(data)
      @last = @head
    end
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

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    if @last
      new_node = Node.new(data)
      @last.next = new_node
      @last = new_node
    else
      @head = Node.new(data)
      @last = @head
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    return nil if @last.nil?

    return @last.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if index + 1 > length # rubocop says self.length was redundant

    current = head
    i = 0
    until i == index
      current = current.next
      i += 1
    end

    return current.data
  end
end
