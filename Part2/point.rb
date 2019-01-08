# Point class
class Point
  attr_accessor :pos_x, :pos_y

  def initialize(pos_x = 0, pos_y = 0)
    @pos_x = pos_x
    @pos_y = pos_y
  end

  def to_s
    "<POINT> X: #{pos_x}\tY: #{pos_y}"
  end
end
