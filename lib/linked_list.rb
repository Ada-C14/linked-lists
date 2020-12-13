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
    return @head.nil? ? @head : @head.data
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
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
      return @head
    end

    current = @head

    until current.next.nil?
      current = current.next
    end

    current.next = new_node
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

    current_index = 0
    current = @head

    until current_index == index || current.next.nil?
      current_index += 1
      current = current.next
    end

    return current_index == index ? current.data : nil
  end
end
