class NumbersController < ApplicationController
  def index
    @numbers = FizzBuzz.build_list(min..max)
  end

  private

  def min
    params[:numbers][:min].to_i
  end

  def max
    params[:numbers][:max].to_i
  end
end
