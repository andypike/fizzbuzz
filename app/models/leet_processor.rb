class LeetProcessor
  include Processable

  def message
    "Leet"
  end

  def match?
    number % 1337 == 0
  end
end
