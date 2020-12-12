require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data, nextNode = @head)
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.data if @head
    return @head
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current_node = @head
    return 0 unless current_node
    list_length = 0
    until current_node.nil?
      list_length += 1
      current_node = current_node.next
    end
    return list_length
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
