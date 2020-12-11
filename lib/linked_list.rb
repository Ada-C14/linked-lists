# frozen_string_literal: true
require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # regardless of the length of the list or the size of the data,
  # this function performs at most two operations: making a
  # new node and assigning that node to the @head instance variable
  #
  # Space complexity - O(1)
  # regardless of the length of the list or the size of the data,
  # the linked list is only growing by one node
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data, @head)
      @head = new_node
    end
  end

  # Time complexity - O(1)
  # the method just has to perform one operation, looking up the node
  # that is saved in the @head instance variable
  #
  # Space complexity - O(n)
  # the amount of space needed for the return data will depend on
  # the size of the data saved to that node (whether it is e.g.
  # one number or a collection of many numbers) and so will be O(n)
  # where n is the size of the data
  def get_first
    return (@head.nil? ? @head : @head.data)
  end

  # Time complexity - O(n)
  # the method has to move through each node in the linked list
  # individually and therefore the number of operations performed
  # will increase as the length of the list increases
  #
  # Space complexity - O(1)
  # regardless of the length of the list, all that is being returned
  # is one integer
  def length
    count = 0
    current = @head

    while current
      count += 1
      current = current.next
    end

    return count
  end

  # Time complexity - O(n)
  # the node creation takes two operations (making a new node
  # and assigning it as the previous node's next), but the method
  # first has to find the last node in the list by going through all
  # the nodes in order, and therefore has time complexity of O(n)
  # where n is the number of nodes in the list
  #
  # Space complexity - O(1)
  # regardless of the length of the list or the size of the data,
  # the linked list is only growing by one node
  def add_last(data)
    last = find_last

    if last.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      last.next = new_node
    end
  end

  # Time complexity - O(n)
  # the method has to travel through the entire list one
  # node at a time to find the last one, and therefore time will
  # depend on the size of the list (n)
  #
  # Space complexity - O(n)
  # the amount of space needed for the return data will depend on
  # the size of the data saved to that node (whether it is e.g.
  # one number or a collection of many numbers) and so will be O(n)
  # where n is the size of the data
  def get_last
    last = find_last
    return (last.nil? ? last : last.data)
  end

  # Time complexity - O(n)
  # the list cannot jump straight to a given index and has
  # to travel the length of the list until it arrives at the
  # index. In a worst case scenario, this could mean moving
  # through the entire list one node at a time, and therefore
  # time is O(n) where n is the length of the list
  #
  # Space complexity - O(n)
  # the amount of space needed for the return data will depend on
  # the size of the data saved to that node (whether it is e.g.
  # one number or a collection of many numbers) and so will be O(n)
  # where n is the size of the data
  def get_at_index(index)
    current_index = 0
    current = @head

    while current
      if current_index == index
        return current.data
      else
        current_index += 1
        current = current.next
      end
    end

    return nil
  end

  private

  def find_last
    current = @head

    current = current.next while current&.next

    return current
  end
end
