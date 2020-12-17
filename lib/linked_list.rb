require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - 0(1)
  def add_first(data)
    # Initilized an instance of LinkedList class with speficic value/data
    new_node = Node.new (data)
    new_node.next = @head # create a reference from new_node to @head
    @head = new_node # create a reference from @head to new_node
  end

  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def get_first
    if @head == nil
      return nil
    end

    current = @head.data
    return current
  end

  # Time complexity - 0(n)
  # Space complexity - 0(1)
  def length
    if @head == nil
      return 0
    end
    
    current = @head
    count = 0

    until current.nil?
      current = current.next
      count += 1
    end

    return count 
  end

  # Time complexity - O(n)
  # Space complexity - 0(1)
  def add_last(data)
    new_node = Node.new (data)
    current = @head

    if @head == nil
      new_node.next = head
      @head = new_node
      return
    end

    # Loop over the list to find the last element
    until current.next.nil? # the next value/node of current is nil
      current = current.next # traverse through the linked list til the last value
    end

    current.next = new_node
    # return current.next

  end

  # Time complexity - 0(n))
  # Space complexity - 0(1)
  def get_last

    current = @head

    if @head == nil
      return nil
    end

    until current.next.nil? # the next value/node of current is nil
      current = current.next # traverse through the linked list til the last value
    end

    return current.data  


  end

  # Time complexity - 0(n)
  # Space complexity - 0(1)
  def get_at_index(index)
    current = @head
    count = 0

    until current.nil? || count == index
      current = current.next
      count += 1
    end

    if current.nil?
      return nil
    end
    
    return current.data
  end

  # def print_node
  #   current = @head
  #   until current.nil?
  #     puts current # print node before increment
  #     current = current.next
  #   end
  # end
end
