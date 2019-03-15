class Node
  attr_accessor :value, :prev_node, :next_node

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
    if !@tail
      nil
    elsif @head == @tail
      number = @head.value
      @head = nil
      @tail = nil
      number
    else
      number = @tail.value
      @tail = @tail.prev_node
      @tail.next_node = nil
      number
    end
      
  end

  def shift
    if !@head
      nil
    elsif @head == @tail
      number = @head.value
      @head = nil
      @tail = nil
      number
    else
      number = @head.value
      @head = @head.next_node
      @head.prev_node = nil
      number
    end
  end

  def push(number)
    @current_node = Node.new(number)

    if !@head
      @head = @current_node
    else
      @current_node.prev_node = @tail
      @tail.next_node = @current_node
    end

    @tail = @current_node
  end

  def unshift(number)
    @current_node = Node.new(number)

    if !@head
      @head = @current_node
      @tail = @current_node
    else
      @head.prev_node = @current_node
      @current_node.next_node = @head
    end

    @head = @current_node
  end
end
