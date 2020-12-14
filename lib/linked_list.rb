require_relative 'node'

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = tail
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
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

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
   last = Node.new(data)

  @tail ? @tail.next = last : @head = last
   @tail = last
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    if @tail.nil?
      return nil
    end

    return @tail.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
