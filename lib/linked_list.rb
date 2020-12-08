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
  # >> return nil or head data
  # Space complexity - O(1)
  # >> no new vars
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
  # >> create new node and set as tail node no matter how long list is
  # Space complexity - O(1)
  # >> one temp node no matter how long list is
  def add_last(data)
    temp = Node.new(data)
    @tail ? @tail.next = temp : @head = temp
    @tail = temp
  end

  # Time complexity - O(1)
  # >> return tail data or nil
  # Space complexity - O(1)
  # >> creating no new vars
  def get_last
    return @tail ? @tail.data : nil
  end

  # Time complexity - O(n)
  # >> have to traverse list to find the node at that index
  # Space complexity - O(1)
  # >> always tracking current_ind int and current node no matter how long list is
  def get_at_index(index)
    return nil unless @head
    return @head.data if index.zero?

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
