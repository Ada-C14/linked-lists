require_relative 'node'

class LinkedList

  # length method:
  # Time complexity - O(1)
  # Space complexity - O(1)
  attr_reader :head, :length

  def initialize
    @head = nil
    @last = nil
    @length = 0
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
    @length += 1
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head if @head.nil?
    return @head.data
  end


  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    if @last.nil?
      add_first(data)
      @last = @head
    else
      @last.next = Node.new(data, nil)
      @last = @last.next
      @length += 1
    end
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    return nil if @last.nil?
    return @last.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index, node = @head)
    return nil if index >= self.length
    return node.data if index == 0 || node.next.nil?
    return get_at_index(index - 1, node.next)
  end
end
