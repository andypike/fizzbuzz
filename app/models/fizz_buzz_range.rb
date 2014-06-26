class FizzBuzzRange
  include ActiveModel::Model

  attr_accessor :min, :max

  def initialize(params)
    @min = params.fetch(:min, 1).to_i
    @max = params.fetch(:max, 10).to_i
  end

  def range
    min..max
  end
end
