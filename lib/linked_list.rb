require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data, @head)
    @head = new_node
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    if @head
      return @head.data
    else
      return nil
    end
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
    current = @head
    newNode = Node.new(data, nil)

    if current.nil?
      @head = newNode
    else
      until current.next.nil?
        current = current.next
      end
      current.next = newNode
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    if @head
      current = @head
    else
      return nil
    end

    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    current = @head
    current_index = 0
    if current.nil? || index.nil?
      return nil
    end
    until current_index == index
      current = current.next
      current_index += 1
    end
    return current.data
  end
end
