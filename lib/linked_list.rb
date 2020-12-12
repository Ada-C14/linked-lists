require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ? O(1)
  # Space complexity - ? O(1)
  def add_first(data)
    @head = Node.new(data) if @head.nil?

    temp = @head
    @head = Node.new(data, temp)
  end

  # Time complexity - ? O(1)
  # Space complexity - ? 0(1)
  def get_first
    return @head if @head.nil?

    return @head.data

  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def length
    return 0 if @head.nil?

    current = @head
    counter = 0

    until current.next.nil?
      current = current.next
      counter += 1
    end

    return counter

  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    end

    current = @head
    until current.next.nil?
      current = current.next
    end

    current.next = Node.new(data)
  end


  def add_at_index(index, data)
    @head = Node.new(data) if @head.nil?

    current = @head

    found = gai_helper(current, index)

    next_index = found.next

    found.next = Node.new(data, next_index)

  end


  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def get_last
    return @head if @head.nil?

    current = @head
    until current.next.nil?
      current = current.next
    end

    return current.data
  end

  # Time complexity - ? O(n)
  # Space complexity - ? O(1)
  def get_at_index(index)
    return @head if @head.nil?

    current = @head

    found = gai_helper(current, index)

    return found.data

    #base case: return current if index == 0
    #check base works @head = @head.next
    #recursive case (math) return get_at_index(index-1)

  end

  def gai_helper(current, index)
    return current if index == 0

    current = current.next

    return gai_helper(current, index-1)

  end
end
