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
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
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
    if @head.nil?
      return add_first(data)
    else
      current = @head
      while current != nil
        current = current.next
      end
      current.next = Node.new(data)

      return current.next.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if @head.nil?
    current = @head
    while current != nil
      current = current.next
    end
    return current
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    i = 0
    self.each do |node|
      if i == index
        return node
      end
      i += 1
    end
  end

end