require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      temp = Node.new(data, @head) # making a new head
      @head = temp
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?
    # return 1 if @head.next = nil

    count = 1
    current = @head
    until current.next == nil
      current = current.next
      count += 1
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
      return
    end
    last = @head
    until last.next.nil?
      last = last.next
    end
    last.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    last = @head
    until last.next == nil
      last = last.next
    end
    return last.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)

    current = @head
    index.times do
      return nil if current.nil?

      current = current.next
    end

    return nil if current.nil?

    current.data
  end
end
