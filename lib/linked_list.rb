require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return @head
    else
      return @head.data
    end

  end

  # Time complexity - O(n), where n = number of nodes in the list
  # Space complexity - O(n)
  def length
    current = @head
    count = 0

    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n), where n = number of nodes in the Linked List
  # Space complexity - O(n)
  def add_last(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = new_node
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    if @head.nil?
      return @head
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    current = @head
    count = 0

    while count < index
      if current.nil?
        return nil
      else
        current = current.next
        count += 1
      end
    end
    return current.data
  end
end
