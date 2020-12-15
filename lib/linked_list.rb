require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1) (or is it 0(n) because 'data' could be of varying sizes?)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node 
    return @head.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head
      return @head.data
    end

    return nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1) (or is it 0(n) because 'data' could be of varying sizes?)
  def add_last(data)
    if find_last 
      last = self.find_last
      last.next = Node.new(data)
    else
      @head = Node.new(data)
    end

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if find_last
      return find_last.data
    end
    return nil 
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head
      index_counter = 0
      current = @head

      until index_counter == index
        index_counter += 1
        current = current.next
      end

      return current.data
    end
    return nil
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def find_last
    if @head
      current = @head
      
      while current.next != nil
        current = current.next
      end
      return current
    end
    return nil
  end
end
