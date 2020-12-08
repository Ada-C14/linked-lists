require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @tail = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  # >> creating one node to beginning of list
  def add_first(data)
    temp = Node.new(data)
    @head ? temp.next = @head : @tail = temp
    @head = temp
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head ? @head.data : nil
  end

  # Time complexity - O(n)
  # >> traverse entire list to get full length
  # Space complexity - O(1)
  # >> len and current
  def length
    return 0 unless @head

    len = 1
    current = @head
    until current.next.nil?
      current = current.next
      len += 1
    end

    return len
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    temp = Node.new(data)
    @tail ? @tail.next = temp : @head = temp
    @tail = temp
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    return @tail ? @tail.data : nil
  end

  # Time complexity - O(n)
  # >> have to traverse list to find the node at that index
  # Space complexity - O(1)
  def get_at_index(index)
    return @head.data if index.zero?
    return nil unless @head

    current_ind = 0
    current = @head
    until current.next.nil?
      current = current.next
      current_ind += 1

      return current.data if current_ind == index
    end

    return nil
  end
end
