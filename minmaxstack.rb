require "byebug"
require_relative 'MyStack
'

class MinMaxStack

  attr_reader :store

  def initialize
    @store = MyStack.new
  end

  def empty?
    store.empty?
  end

  def min
    peek[:min] unless empty?
  end

  def max
    # byebug
    peek[:max] unless empty?
  end

  def peek
    store.peek unless empty?
  end

  def pop
    store.pop[:value] unless empty?
  end
