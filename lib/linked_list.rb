require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head) # default next is nil for a node.
  end

  # Time complexity - O(1)
  # Space complexity - O(1) - you are not creating new nodes or allocating memory -- you are retrieving
  #                     information about existing nodes allocated.
  def get_first
    return @head.nil? ? nil : @head.data
  end

  # Time complexity - O(n) - assuming a linked list with n nodes, at most you would have to travel through
  #                   n nodes to get to the worst-case last node of the linked list, since you must access
  #                   those nodes through the previous node.
  # Space complexity - O(1) - you're not allocating any data other than a variable to track how many
  #                    nodes you've passed
  def length
    return 0 if head.nil?

    current = @head # set your "pointer" (except not at all) to the first node
    count = 0 # to track how many nodes you've passed

    while !current.nil? # last node will have nil in next field
      count += 1 # count the node as soon as you move to it
      current = current.next
    end

    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
