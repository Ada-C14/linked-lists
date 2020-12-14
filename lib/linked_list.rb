require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
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
    #return data
    return @head.data if @head != nil
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    return 0 if @head.nil?
    current = @head
    length = 0
    while !current.nil?
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    current = @head

    if !@head.nil? #if list is not empty
        until current.next.nil?
          current = current.next
        end
        current.next = Node.new(data, nil)
    else
      @head = Node.new(data)# if list is empty, add a node to the front
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    return nil if @head.nil?
    current = @head
    if !@head.nil?
      until current.next.nil?
        current = current.next
      end
      return current.data #return data, not the node
    end

  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    return nil if index >= self.length
    current = @head
    count = 0
    if !@head.nil?
      until count == index
        count += 1
        current = current.next
      end
      return current.data
    end
  end
end
