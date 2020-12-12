require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) inserting without moving any other elements.
  # Space complexity - O(1) Constant space in regards to the size of the linked list. O(k) space k being the size of the passed in data if counted.
  def add_first(data)
    node = Node.new(data, @head)
    @head = node
  end

  # Time complexity - O(1) direct access to the first element no matter no long the linked list is.
  # Space complexity - O(1) No extra memory used
  def get_first
    return @head.data unless @head.nil?
  end

  # Time complexity - O(n) linear relaship to the size of the linked list as we need to traverse all elements to get the length.
  # Space complexity - O(1) only integer variables were created.
  def length
    count = 0
    current = @head
    until current.nil?
      current = current.next
      count += 1
    end
    return count
  end

  # Time complexity - O(n), n being the length of the linked list, for getting to the end of the linked list. O(1) for inserting
  # Space complexity - O(1) Constant space in regards to the size of the linked list. O(k) space k being the size of the passed in data if counted.
  def add_last(data)
    node = Node.new(data, nil) 

    if @head.nil?
      @head = node
      return @head.data
    end

    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.next = Node.new(data, nil)
  end

  # Time complexity - O(n), n being the length of the linked list, for getting to the end of the linked list.
  # Space complexity - O(1) no extra memory used
  def get_last
    return nil if @head.nil?
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n) to get the index
  # Space complexity - O(1) no extra memory used
  def get_at_index(index)
    count = 0 
    current = @head
    until current.nil?
      if count == index
        return current.data
      end
      count += 1
      current = current.next
    end

    return nil
  end
end
