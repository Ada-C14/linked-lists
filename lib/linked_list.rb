require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    first = Node.new(data)

    if @head
      first.next = @head
    end

    @head = first
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    end

    return @head.data

  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head

    while current != nil
      count += 1
      current = current.next
    end

    return count

  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
