class FizzBuzzRange
  include ActiveModel::Model

  attr_accessor :min, :max

  validates :min, :max,
    :presence => true,
    :numericality => true

  def initialize(params)
    @min = params.fetch(:min, "1")
    @max = params.fetch(:max, "10")
  end

  def range
    min.to_i..max.to_i
  end
end
