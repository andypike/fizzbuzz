module Processable
  attr_reader :list, :number

  def initialize(list, number)
    @list = list
    @number = number
  end

  def process
    if process?
      list << message
      number.processed!
    end
  end

  def process?
    return false if number.processed?
    match?
  end
end
