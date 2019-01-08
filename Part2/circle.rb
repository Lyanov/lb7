require './point'

# Circle class
class Circle < Point
  attr_accessor :radius

  def initialize(pos_x = 0, pos_y = 0, radius = 1)
    super pos_x, pos_y
    @radius = radius
  end

  def to_s
    "<CIRCLE> X: #{pos_x}\tY: #{pos_y}\tRadius: #{radius}"
  end
end
