class NumbersController < ApplicationController
  def index
    @numbers = FizzBuzz.new.build_list(min..max)
  end

  private

  def params_with_defaults
    params.reverse_merge!(:numbers => { :min => 1, :max => 10 })
  end

  def min
    params_with_defaults[:numbers][:min].to_i
  end

  def max
    params_with_defaults[:numbers][:max].to_i
  end
end
