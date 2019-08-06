require_relative "minmaxstack"

class MinMaxStackQueue

  attr_reader :input, :output

  def initialize
    @input = MinMaxStack.new
    @output = MinMaxStack.new
  end

  def enqueue(value)
    @input.push(value)
  end

  def dequeue
    if @output.empty?
      until @input.empty?
        @output.push(@input.pop)
      end
    end
    @output.pop
  end

  def max
    if @output.empty?
      @input.max
    elsif @input.empty?
      @output.max
    else
      [@input.max, @output.max].max
    end
  end

  def min
    if @output.empty?
      @input.min
    elsif @input.empty?
      @output.min
    else
      [@input.min, @output.min].min
    end
  end
end