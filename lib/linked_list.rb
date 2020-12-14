require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
   end

  # Time complexity - O(1)
  # Space complexity - O(n) - creating a node takes up space, right?
  def add_first(data)
    if @head
      @head = Node.new(data, @head)
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.nil? ? @head : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?

    count = 1
    current = @head
    while current.next
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n) - adding a node takes space
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      tail = Node.new(data)
      current = @head
      while current.next
        current = current.next
      end
      current.next = tail
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return @head if @head.nil?
    current = @head
    while current.next
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

    return nil if index > self.length - 1

    count = 0
    current = @head
    while count < index
      count += 1
      current = current.next
    end
    return current.data
  end
end
