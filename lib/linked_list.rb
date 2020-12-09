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
    head ? head.data : head
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0 if @head.nil?
    nodes = 1
    current = @head
    until current.next.nil?
      nodes += 1
      current = current.next
    end
    return nodes
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    if @head.nil?
      self.add_first(data)
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      new_node = Node.new(data)
      current.next = new_node
    end
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

  end
end
