require_relative 'node'

class LinkedList
  attr_reader :head  #instance variable 'head' which is ref to 1st node in linked list

  def initialize
    @head = nil
  end

  # Time complexity - o(1)
  # Space complexity - o(1)
  def add_first(data)
    new_node = Node.new(data, @head)
    @head = new_node
    return @head
  end

  # Time complexity - o(1)
  # Space complexity - o(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - o(n) - n being length of list 
  # Space complexity - o(1)
  def length
    count = 0
    current = @head
    while !current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - o(n) - n being length of list 
  # Space complexity - o(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next.nil?
        current = current.next
      end 
      current.next = Node.new(data)
    end
  end

  # Time complexity - o(n) - n being length of list 
  # Space complexity - o(1) 
  def get_last
    current = head
    until current.next.nil?
      current = current.next
    end
      return current.data
  end 


  # Time complexity - o(n) - n being index 
  # Space complexity - o(1)
  def get_at_index(index)
    current = @head
    if current.nil?
      return nil
    else
      index.times do
        current = current.next
      end
        return current.data
      end 
  end
end
