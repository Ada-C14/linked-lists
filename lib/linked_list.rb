require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head
      new_node = Node.new(data, @head)
      @head = new_node
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    len = 0
    until current.nil?
      len += 1
      current = current.next
    end
    return len
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head
      current = @head
      until current.next.nil?
        current = current.next
      end
      new_node = Node.new(data)
      current.next = new_node
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head.nil?
      return nil
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil? || index >= length
      return nil
    else
      current = @head

      index.times do
        current = current.next
      end

      return current.data
    end

  end
end
