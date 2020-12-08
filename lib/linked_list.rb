require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return @head.next
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    #return 0
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
    new_node = Node.new(value)

    self.each do |node|
      if node.@next == nil
      node.@next = data
      data.@next = nil
      end
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    self.each do |node|
      if node.@next == nil
        return node
      end
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
