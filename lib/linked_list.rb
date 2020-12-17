require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize()
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
    return 0 unless @head
    current_node = @head
    counter = 0
    until current_node.nil? do
      current_node = current_node.next
      counter += 1
    end
    return counter
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = add_first(data)
      return
    end
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.next = Node.new(data)
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return unless @head
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if !@head || index < 0

    current = @head
    counter = 0

    until current.nil?
      return current.data if counter == index
      counter += 1
      current = current.next
    end
    return nil
  end
end



