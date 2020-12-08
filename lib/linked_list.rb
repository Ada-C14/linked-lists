require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  # >> creating one node to beginning of list
  def add_first(data)
    temp = Node.new(data)
    temp.next = @head if @head
    @head = temp
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil unless @head

    return @head.data
  end

  # Time complexity - O(n)
  # >> traverse entire list to get full length
  # Space complexity - O(1)
  # >> len and current
  def length
    return 0 unless @head

    len = 1
    current = @head
    until current.next.nil?
      current = current.next
      len += 1
    end

    return len
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
