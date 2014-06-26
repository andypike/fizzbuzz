class NumbersController < ApplicationController
  def index
    @min = params_with_defaults[:numbers][:min].to_i
    @max = params_with_defaults[:numbers][:max].to_i
    @numbers = FizzBuzz.new.build_list(@min..@max)
  end

  private

  def params_with_defaults
    params.reverse_merge(:numbers => { :min => 1, :max => 10 })
  end
end
