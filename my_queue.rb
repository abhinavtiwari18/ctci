push_stack = [1,2,3]
pop_stack = [3,2,1]

class MyQueue
  def initialize
    @push_stack = []
    @pop_stack = []
  end

  def peek
    @push_stack.first
  end

  def pop
    @push_stack.shift
    @pop_stack.pop
  end

  def push(value)
    @push_stack.push(value)
    @pop_stack.unshift(value)
  end
end


queries = gets.to_i

queue_instance = MyQueue.new

queries.times do
  type = gets.split(' ').map(&:to_i)
  case type.first
    when 1
      queue_instance.push(type[1])
    when 2
      queue_instance.pop
    when 3
      p queue_instance.peek
  end
end