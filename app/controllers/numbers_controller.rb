class NumbersController < ApplicationController
  def index
    @numbers = %w(1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz)
  end
end
