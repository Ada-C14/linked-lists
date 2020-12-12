require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    return @head
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return @head.data unless @head.nil?

    return nil
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
    return add_first(data) if @head.nil?

    current = @head
    current = current.next until current.next.nil?

    current.next = Node.new(data)
    return current.next
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if @head.nil?
    current = @head
    current = current.next until current.next.nil?
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    index.times do
      current = current.next
    end
    return current.data
  end
end
