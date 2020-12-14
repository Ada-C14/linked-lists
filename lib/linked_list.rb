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
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    @head.nil? ? nil : @head.data
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
    add_first(data) if @head.nil?
    current = @head
    until current.next.nil?
      current = current.next
    end
    current.next = Node.new(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if @head.nil?
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    index.times do
      return nil if current.nil?
      current = current.next
    end
    return current.data
  end

end
