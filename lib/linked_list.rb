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
    return @head if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length(node = @head, len = 0)
    return len if node.nil?
    return length(node.next, len + 1)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data, node = @head)
    add_first(data) and return if node.nil?
    node.next = Node.new(data, nil) and return if node.next.nil?
    add_last(data, node.next)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last(node = @head)
    return node if node.nil?
    return node.data if node.next.nil?
    return get_last(node.next)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index, node = @head)
    return nil if index >= self.length
    return node.data if index == 0 || node.next.nil?
    return get_at_index(index - 1, node.next)
  end
end
