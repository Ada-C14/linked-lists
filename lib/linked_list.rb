require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data, nil)
    new_node.next = head
    @head = new_node
  end

  # My practice :)
  # def print()
  #   cursor = @head
  #   while cursor != nil
  #     p cursor.data
  #     # p cursor.next
  #     cursor = cursor.next
  #   end
  # end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head == nil
      add_first(data)
    else
      new_node = Node.new(data, nil)
      cursor = @head
      while cursor.next != nil
        cursor = cursor.next
      end
      cursor.next = new_node
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head == nil
      return nil
    end
    cursor = @head
    while cursor.next != nil
      cursor = cursor.next
    end
    return cursor.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if @head == nil
      return nil
    end
    count = 0
    cursor = @head
    while cursor != nil
      if count == index
        return cursor.data
      end
      count += 1
      cursor = cursor.next
    end
  end
end
