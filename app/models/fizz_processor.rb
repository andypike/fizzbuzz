class FizzProcessor
  include Processable

  def message
    "Fizz"
  end

  def match?
    number % 3 == 0
  end
end
