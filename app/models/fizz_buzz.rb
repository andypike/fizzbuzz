class FizzBuzz
  def build_list(range)
    [].tap do |list|
      range.each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FizzBuzz"
        elsif n % 3 == 0
          list << "Fizz"
        elsif n % 5 == 0
          list << "Buzz"
        else
          list << n.to_s
        end
      end
    end
  end
end
