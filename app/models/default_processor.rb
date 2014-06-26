class DefaultProcessor
  include Processable

  def message
    number.to_s
  end

  def match?
    true
  end
end
