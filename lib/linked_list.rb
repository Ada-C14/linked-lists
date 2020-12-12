require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @length = 0
    @tail = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(n) - Varies with size of data
  def add_first(data)
    @head = Node.new(data, @head)
    @length += 1
    if @head.next.nil?
      # List was empty, this is also the new tail
      @tail = @head
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head&.data
  end

  # Time complexity - O(1) - Length is stored
  # Space complexity - O(1)
  def length
    return @length
  end

  # Time complexity - O(1) - Tail is stored
  # Space complexity - O(n) - Varies with size of data
  def add_last(data)
    if @tail
      @tail.next = Node.new(data, nil)
      @tail = @tail.next
    else
      @tail = Node.new(data, nil)
      @head = @tail
    end

    @length += 1
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    return @tail&.data
  end

  # Time complexity - O(n) - Must traverse the list
  # Space complexity - O(1)
  def get_at_index(index)
    return nil unless @head
    @current = @head
    index.times do
      @current = @current&.next
      break unless @current
    end

    return @current&.data
  end
end