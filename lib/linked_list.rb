require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    @head.nil? ? nil : @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    current = @head

    count = 0
    until current.nil?
      count += 1
      current = current.next
    end

    return count

  end

  # Time complexity - ?
  # Space complexity - ?
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

  # Time complexity - ?
  # Space complexity - ?
  def get_last

    current = @head

    until current.next.nil?
      current = current.next
    end

    return current.data

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
