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
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0 if head.nil?

    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next
    end
    return count

  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    if @head.nil?
      self.add_first(data)
    else

      current = @head

      until current.next.nil?
        current = current.next
      end

      current.next = Node.new(data)
    end

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if @head.nil?

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
