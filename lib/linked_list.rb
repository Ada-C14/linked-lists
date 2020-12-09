require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add an element.
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def add_first(data)
    if @head
      new_node = Node.new(data)
      new_node.next = @head
      @head = new_node
    else
      @head = Node.new(data)
    end
    return @head
  end

  # Time complexity - O(1), it's O(1) to find the head, ie the front of linked list, and add an element.
  # Space complexity - O(1), no extra variable is used, so it's O(1).
  def get_first
    return @head.data if @head
    return nil
  end

  # Time complexity - O(n), it needs to go thru the whole linked list to count the length, so the time complexity is O(n).
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def length
    count = 0
    current = @head
    while current 
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n), it needs to go thru the whole linked list to add a new data to the last slot, so the time complexity is O(n).
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def add_last(data)
    if @head
      old_next = @head
      current = @head.next
      while current 
        old_next = current
        current = current.next
      end
      new_node = Node.new(data)
      old_next.next = new_node
    else
      @head = Node.new(data)
    end
    return @head
  end

  # Time complexity - O(n), it needs to go thru the whole linked list to find the last element, so the time complexity is O(n).
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def get_last
    return nil if @head.nil?
    old_next = @head
    current = @head.next
    while current 
      old_next = current
      current = current.next
    end
    return old_next.data
  end

  # Time complexity - O(n), it needs to go thru the whole linked list to find the index, so the time complexity is O(n).
  # Space complexity - O(1), it uses limited variables, ie a constant, so it's O(1).
  def get_at_index(index)
    count = 0
    current = @head
    while current 
      if count == index
        return current.data 
      end
      count += 1
      current = current.next
    end
    return nil # for @head.nil & non-existent index
  end
end
