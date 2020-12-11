# frozen_string_literal: true
require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data, @head)
      @head = new_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    (@head.nil? ? @head : @head.data)
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    current = @head

    while current
      count += 1
      current = current.next
    end

    count
  end

  def find_last
    current = @head

    current = current.next while current&.next

    current
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    last = find_last

    if last.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      last.next = new_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    last = find_last
    (last.nil? ? last : last.data)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index); end
end
