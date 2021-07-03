require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - 1
  # Space complexity - 1
  def add_first(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end
    return @head.data
  end

  # Time complexity - 1
  # Space complexity - 1
  def get_first
    return @head.nil? ? @head : @head.data
  end

  # Time complexity - n
  # Space complexity - 1
  def length
    count = 0
    current = @head

    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - 1
  # Space complexity - 1
  def add_last(data)
    new_node = Node.new(data)
    current = @head

    if current.nil?
      @head = new_node
      return @head
    else
      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end

    return new_node
  end

  # Time complexity - n
  # Space complexity - 1
  def get_last
    return nil if @head.nil?
    count = 0
    current = @head

    while current.next != nil
      count += 1
      current = current.next
    end
    return current.data
  end

  # Time complexity - n
  # Space complexity - 1
  def get_at_index(index)
    count = 0
    current = @head

    while count != index
      count += 1
      return nil if current.nil?
      current = current.next
    end
    return current.data
  end
end
