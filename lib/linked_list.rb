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
      @head = Node.new(data)
      return @head.data
    else
      current = self.get_last_node
      current.next = Node.new(data)
      return current.next.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last_node
    return nil if @head.nil?
    current = @head
    while current.next != nil
      current = current.next
    end
    return current
  end

  def get_last
    return nil if @head.nil?
    return get_last_node.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    return nil if index > self.length
    current = @head
    i = 0
    while current != nil
      if i == index
        return current.data
      else
        current = current.next
        i += 1
      end
    end
  end

end