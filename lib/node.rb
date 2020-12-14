# defines a node in a linkedList
class Node
  attr_reader :data
  attr_accessor :next

  def initialize(value, next_node = nil)
    @data = value
    @next = next_node
  end
end
