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
      @head = Node.new(data, @head)
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.data if @head
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    if @head.nil?
      return 0
    else
      count = 0

      current = @head

      until current.nil?
        count += 1
        current = current.next
      end

      return count
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next == nil
        current = current.next
      end

      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head
      current = @head

      until current.next == nil
        current = current.next
      end

      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    i = 0
    current = @head

    until i == index
      if current.next == nil
        return nil
      else
        current = current.next
        i += 1
      end
    end

    return current.data
  end
end
