require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
  # current = Node.new(data, @head)
  #   @head = current
  # READ RIGHT TO LEFT 
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head == nil
      return nil
    end
    return @head.data
  end

  # Time complexity - O(1)
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

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    if @head == nil
      return add_first(data)
    end
    current = @head
    until current.next == nil
      current = current.next
    end 
    current.next = Node.new(data, nil)
  # Get to the nod before nil
  # current.next = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = @head
    if current == nil
      return nil
    end
    while current.next != nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index) 
    count = 0
    current = @head
    while current != nil && count < index
      count += 1
      current = current.next
    end
    if current == nil
      return nil
    else
      return current.data
    end
  end
end
