require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    node = Node.new(data, head) #head is nil
    @head = node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    head&.data #& means only access data if head is not nil
    # if !head.nil?
    #   return head.data
    # else
    #   return nil
    # end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    node = head

    while !node.nil?
      count += 1
      next_node = node.next
      node = next_node
    end
    count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    return add_first(data) if head.nil? #if list is empty, adding to the first of the list is the same as adding to the end of the list

    node = head
    while !node.next.nil? #when next is nil, we are at the end of the list
      next_node = node.next
      node = next_node
    end

    node.next = Node.new(data) #since node.next is nil, we assign node.next to be pointing to the new object
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return if head.nil?

    node = head #node is the current object
    while !node.next.nil? #iterating through objects until node.next is nil
      # next_node = node.next
      node = node.next
    end
    node.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    count = 0
    node = head
    while count < index
      return if node.nil?
      node = node.next
      count += 1
    end

    node.data
  end
end
