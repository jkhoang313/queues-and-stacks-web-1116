require 'pry'
class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(data)
    @stack << data
  end

  def pop
    @stack.pop
  end

  def size
    @stack.size
  end
end
