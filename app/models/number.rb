class Number
  attr_accessor :number, :processed

  def initialize(number)
    @number = number
    @processed = false
  end

  def processed?
    processed
  end

  def processed!
    self.processed = true
  end

  def %(other)
    number % other
  end

  def to_s
    number.to_s
  end
end
