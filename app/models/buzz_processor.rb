class BuzzProcessor
  include Processable

  def message
    "Buzz"
  end

  def match?
    number % 5 == 0
  end
end
