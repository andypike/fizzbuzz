class NumbersController < ApplicationController
  def index
    @range = FizzBuzzRange.new(params[:fizz_buzz_range] || {})

    if @range.valid?
      @numbers = FizzBuzz.new.build_list(@range.range)
    else
      @numbers = []
    end
  end
end
