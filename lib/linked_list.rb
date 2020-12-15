require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    # Creates new node with old head before assignment
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current_node = @head
    until current_node.nil? do
      count += 1
      current_node = current_node.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      # Default value of next is nil
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next.nil? do
        current_node = current_node.next
      end

      current_node.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?

    current_node = @head
    until current_node.next.nil? do
      current_node = current_node.next
    end

    return current_node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if index > self.length || index < 0
      return nil
    elsif index == 0
      return @head.data
    else
      current_node = @head
      index.times { current_node = current_node.next }
      return current_node.data
    end
  end
end
