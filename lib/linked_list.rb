require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head

    count = 0
    until current.nil?
      count += 1
      current = current.next
    end

    return count

  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)

    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      current = @head
      until current.next.nil?
        current = current.next
      end

      current.next = new_node
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last

    if @head.nil?
      return nil
    end

    current = @head
    until current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

    current = @head

    index.times do
      return nil if current.nil?
      current = current.next
    end

    return current.data
  end
end
