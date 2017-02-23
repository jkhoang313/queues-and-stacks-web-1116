require_relative 'stack'

class Queue
  def initialize
    @adding = Stack.new
    @removing = Stack.new
  end

  def enqueue(data)
    @adding.push(data)
  end

  def dequeue
    @adding.size.times do
      @removing.push(@adding.pop)
    end

    next_pop = @removing.pop

    @removing.size.times do
      @adding.push(@removing.pop)
    end

    next_pop
  end
end
