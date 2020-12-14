require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)  - I think these first two would be O(1) because they dont need to traverse the list, while the other 4 do so I assumed O(n) for those
  # Space complexity - O(1)
  def add_first(data)
    new_node = Node.new(data, @head)
    @head = new_node
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head
      return @head.data
    else
      return nil
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)  - I had some trouble determining space complexity of linked lists methods, I ended up assuming they were probably the same as time complexity. I made this assumption based on the call stack of operations, let me know if I'm off base or misunderstanding
  def length
    current = @head
    count = 0
    until current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    current = @head
    newNode = Node.new(data, nil)

    if current.nil?
      @head = newNode
    else
      until current.next.nil?
        current = current.next
      end
      current.next = newNode
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last
    if @head
      current = @head
    else
      return nil
    end

    until current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    current = @head
    current_index = 0
    if current.nil? || index.nil?
      return nil
    end
    until current_index == index
      current = current.next
      current_index += 1
    end
    return current.data
  end
end
