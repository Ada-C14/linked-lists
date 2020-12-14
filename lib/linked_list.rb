require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)--only adding one value and reassigning next to old value of head
  # Space complexity - O(1)--simple reassignment, not creating anything new (except )
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node #@head is now being assigned to new value (data)
    # return @head
  end

  # Time complexity - O(1)--don't have to traverse anything. Simply returning first value.
  # Space complexity - O(1)--space is not added
  def get_first
    return nil if @head.nil?
    return @head.data #(returning value (.data) instead of Nodes object)
  end

  # Time complexity - O(n)...have to traverse entire linked list
  # Space complexity - O(1)--not adding any additional space
  def length
    return 0 if @head.nil?
    current = @head
    counter = 0
    while current != nil
      counter += 1
      current = current.next
    end
    return counter
  end

  # Time complexity O(n)--have to traverse entire linked list to find the end where we add a new node
  # Space complexity - O(1) -no new data structures added. Just adding a single entry.
  def add_last(data)
    if @head.nil?
      @head = Node.new(data, nil) #adding to front of list if head is nil
    end

    #loop through linked list until last item is found and then add new item
    current = @head
    while current.next != nil
      current = current.next
    end

    current = Node.new(data, nil)
    return current
    end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    return nil if @head.nil?
    current = @head
    while current.next != nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    return nil if @head.nil?
    current = @head
    counter = 0
    while counter <= index
      current = current.next
      counter += 1
      end
        return current.data
    end
    # return nil
  end

