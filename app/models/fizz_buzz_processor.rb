class FizzBuzzProcessor
  include Processable

  def message
    "FizzBuzz"
  end

  def match?
    number % 3 == 0 && number % 5 == 0
  end
end
