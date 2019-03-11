class Node
  attr_accessor :prev_node, :next_node

  def initialize(value)
    @value = value
    @prev_node = nil
    @next_node = nil
  end
end

class Deque
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def pop

  end

  def shift

  end

  def push(number)
    @current_node = Node.new(number)
    
    unless @head
      @head = @current_node
    else
      @current_node.prev_node = @tail
      
    end

    @tail = @current_node
  end

  def unshift(number)
    @current_node = Node.new(number)
  end
end