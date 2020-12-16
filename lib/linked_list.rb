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
    return @head.data if @head != nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    counter = 0

    current = @head

    while current != nil
      counter += 1
      current = current.next
    end

    return counter
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data)
    previous = nil
    current = @head

    while current != nil
      previous = current
      current = current.next
    end

    if previous == nil
      @head = new_node
    else
      previous.next = new_node
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    previous = nil
    current = @head

    while current != nil
      previous = current
      current = current.next
    end

    if previous == nil
      return nil
    else
      return previous.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
