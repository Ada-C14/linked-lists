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
  # Space complexity - O(n)
  def length
    counter = 0

    current = @head

    while current != nil
      counter += 1
      current = current.next
    end

    return counter
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = head

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
