class Node
  attr_accessor :value, :prev_node, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
    @prev_node = nil
  end
end

class Deque
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reset_list_setup(node)
    if !@tail
      nil
    elsif @head == @tail
      number = @head.value
      @head = nil
      @tail = nil
      number
    else
      if node == @tail
        number = @tail.value
        @tail = @tail.prev_node
        @tail.next_node = nil
      else
        number = @head.value
        @head = @head.next_node
        @head.prev_node = nil
      end
      number
    end
  end

  def pop
    reset_list_setup(@tail)
  end

  def shift
    reset_list_setup(@head)
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
