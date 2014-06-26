class FizzBuzz
  def build_list(range)
    [].tap do |list|
      range.map{ |n| Number.new(n) }.each do |n|
        processors.each do |processor|
          processor.new(list, n).process
        end
      end
    end
  end

  def processors
    [
      FizzBuzzProcessor,
      FizzProcessor,
      BuzzProcessor,
      DefaultProcessor
    ]
  end
end
