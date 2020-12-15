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
    return @head.nil? ? nil : @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    length = 0
    curr = @head
    until curr.nil?
      curr = curr.next
      length += 1
    end
    return length
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    curr = @head
    if curr.nil?
      @head = Node.new(data, nil)
      return
    end
    until curr.next == nil
      curr = curr.next
    end
    curr.next = Node.new(data, nil)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return if @head.nil?
    curr = @head
    until curr.next.nil?
      curr = curr.next
    end
    return curr.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    curr = @head
    index.times do
      curr.nil? ? return : curr = curr.next
    end
    return curr.data
  end
end
