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

  # Time complexity - O(n); O(n) to get to last element, O(1) to insert
  # Space complexity - O(1)
  def add_last(data)
    last_node = Node.new(data)

    unless head
      @head = last_node unless @head
    else
      current_node = @head
      until current_node.next.nil?
        current_node = current_node.next
      end
      current_node.next = last_node
    end
  end

  # Time complexity - O(n) to access last element
  # Space complexity - O(1)
  def get_last
    return @head if @head.nil?
    current_node = @head
    
    until current_node.next.nil?
      current_node = current_node.next
    end
    return current_node.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    current_index = 0
    current_node = @head

    until current_index == index
      return nil if current_node.nil?
      current_node = current_node.next
      current_index += 1
    end
    return current_node.data
  end
end
