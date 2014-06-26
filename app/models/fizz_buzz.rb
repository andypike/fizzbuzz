class FizzBuzz
  def build_list(range)
    [].tap do |list|
      range.each do |n|
        if n % 3 == 0
          list << "Fizz"
        else
          list << n.to_s
        end
      end
    end
  end
end
