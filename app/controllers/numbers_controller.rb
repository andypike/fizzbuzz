class NumbersController < ApplicationController
  def index
    @range = FizzBuzzRange.new(params[:fizz_buzz_range] || {})
    @numbers = FizzBuzz.new.build_list(@range.range)
  end
end
