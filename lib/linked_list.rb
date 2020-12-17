require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    return @head.data
  end

    # Time complexity - O(n)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    while current != nil
      count +=1
      current = current.next
    end
    return count

    # recursive (not working)
    # if current == nil
    #   return 0
    # else
    #   return 1 + length(current)
    # end
  end

  # returns last node for singly linked list
  def last_node
    return nil if @head.nil?
    current = @head
    while current.next != nil
      current = current.next
    end
    return current
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
      return @head.data
    else
      current = self.last_node
      current.next = Node.new(data)
      return current.next.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    return last_node.data
  end

  # Time complexity - O(n)
  # Space complexity - 0(1)??
  def get_at_index(index)
    current = @head
    count = 0
    while current != nil
      if count == index
        return current.data
      else
        current = current.next
        count += 1
      end
    end
  end
end
