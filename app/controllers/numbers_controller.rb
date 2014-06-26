class NumbersController < ApplicationController
  def index
    @numbers = FizzBuzz.new.build_list(min..max)
  end

  private

  def min
    return params[:numbers][:min].to_i if params[:numbers]
    1
  end

  def max
    return params[:numbers][:max].to_i if params[:numbers]
    10
  end
end
