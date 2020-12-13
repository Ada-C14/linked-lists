require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)--only adding one value (reassignment from nil)
  # Space complexity - O(1)--simple reassignment, not creating anything new
  def add_first(data)
    @head = Node.new(data, @head) #@head is now being assigned to new value (data)
    # return @head
  end

  # Time complexity - O(1)--don't have to traverse anything. Simply returning first value.
  # Space complexity - O(1)--space is not added
  def get_first
    return nil if @head.nil?
    return @head.data #(returning value (.data) instead of Nodes object)
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0 if @head.nil?
    current = @head
    counter = 0
    until current.nil?
      counter += 1
      current = current.next

    end
    return counter
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
