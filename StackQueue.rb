require_relative "MyStack"

class StackQueue

  attr_reader :input, :output

  def initialize
    @input = MyStack.new
    @output = MyStack.new
  end

  def enqueue(el)
    @input.push(el)
  end

  def dequeue
    if @output.empty?
      until @input.empty
        @output.push(@input.pop)
      end
    end
    @output.pop
  end
end