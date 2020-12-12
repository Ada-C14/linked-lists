# defines a node in a linkedList
class Node
  attr_reader :data
  attr_accessor :next
  # attr_accessor :previous

  def initialize(value, nextNode = nil) #,previousNode = nil
    @data = value
    @next = nextNode
    # @previous = previousNode
  end
end
