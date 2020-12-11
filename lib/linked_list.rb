require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data, @head)
      @head = new_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return (@head.nil? ? @head : @head.data)
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
