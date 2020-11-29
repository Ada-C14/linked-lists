require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) - we don't need to iterate through the list to add on top of @head.
  # Space complexity - O(1)...? we're only adding 1 node at every function call
  #                    regardless of the length of the linked list length
  def add_first(data)
    @head = Node.new(data, @head) # default next is nil for a node.
  end

  # Time complexity - O(1) - we're getting the head data, so we don't need to "dig" through the list since
  #                   the head object (that is not a pointer in ruby) is already saved in our field.
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
      current = current.next # go to next node
    end

    return count
  end

  # Time complexity - O(n) since a singly linked list only allows access to the head without having to go through
  #                   the rest of the list, n "calls" of going to the next node for a linked list of length n must
  #                   happen to get to the end every time.
  # Space complexity - O(1)...? we're only adding 1 node at every function call
  #                    regardless of the length of the linked list length
  def add_last(data)
    # we can just add first if there's nothing here yet
    if @head.nil?
      self.add_first(data)
    else
      # we need to find the last node
      # we start at the head
      current = @head

      # if we go all the way to nil, we can't attach a new node to the end of the list
      # so, we need to set current to the node WITH node.next = nil
      while !current.next.nil?
        current = current.next
      end

      # here, current is equal to the last (non-nil node)
      # we can set its next field to a new node containing the data we want to add
      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n) since a singly linked list only allows access to the head without having to go through
  #                   the rest of the list, n "calls" of going to the next node for a linked list of length n must
  #                   happen to get to the end every time.
  # Space complexity - O(1) - you are not creating new nodes or allocating memory -- you are retrieving
  #                     information about existing nodes allocated.
  def get_last
    # we can just return 0 for an empty list
    if @head.nil?
      return nil
    else
      # we need to find the last node
      # we start at the head
      current = @head

      # if we go all the way to nil, we can't attach get the data from the last non-nil node
      # ESPECIALLY since this is a singly, not doubly, linekd list
      # so, we need to set current to the node WITH node.next = nil
      while !current.next.nil?
        current = current.next
      end

      return current.data # retrieve data at what should be the last node
    end
  end

  # Time complexity - O(n) - assuming a linked list with n nodes, at most you would have to travel through
  #                   n nodes to get to the worst-case last node of the linked list, since you must access
  #                   those nodes through the previous node.
  # Space complexity - O(1) - you are not creating new nodes or allocating memory -- you are retrieving
  #                     information about existing nodes allocated.
  def get_at_index(index)
    return nil if @head.nil? || index < 0 # empty list always out of range, and let's assume no negative indices

    current = @head # start at head
    count = 0 # set index counter, head == index 0
    while !current.nil?
      return current.data if count == index # return if index match
      count += 1 # otherwise count up to anticipate next node
      # ^ if current.next is nil, it's okay that count goes up
      # we won't be able to enter the loop to compare count to index at that point
      current = current.next # otherwise, keep going
    end
    return nil # here, the list has passed through all nodes without reaching index
  end
end
