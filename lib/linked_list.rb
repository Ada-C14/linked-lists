require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return @head ? @head.data : nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    last = Node.new(data)
    if @head.nil?
      @head = last
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = last
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if head.nil?
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    current = @head
    index.times do
      return nil if current.nil?
      current = current.next
    end
    return current.data
  end
end
