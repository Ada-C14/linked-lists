require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    return @head.data
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
    #return 0
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    current = @head.next
    while current != nil
      current = current.next
    end
    new_node = Node.new(data)
    current.next = new_node

    # self.each do |node|
    #   if node.next == nil
    #   node.next = data
    #   data.next = nil
    #   end
    # end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    self.each do |node|
      if node.next == nil
        return node
      end
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    i = 0
    self.each do |node|
      if i == index
        return node
      end
      i += 1
    end
  end

end