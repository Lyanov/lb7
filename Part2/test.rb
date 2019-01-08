require './circle.rb'
require 'minitest/autorun'

# Testing class
class MyTest < Minitest::Test
  def setup; end

  def test_hierarchy_classes
    assert_equal true, Circle < Point
  end

  def test_hierarchy_objects
    point = Point.new
    circle = Circle.new

    assert_equal true, circle.is_a?(Object)
    assert_equal true, circle.is_a?(Point)
    assert_equal false, circle.instance_of?(Point)

    assert_equal true, point.is_a?(Object)
    assert_equal true, point.is_a?(Point)
    assert_equal true, point.instance_of?(Point)
  end

  def test_point_accessors
    pos_x = -234.234
    pos_y = 8823**36
    point = Point.new pos_x, pos_y
    assert_equal pos_x, point.pos_x
    assert_equal pos_y, point.pos_y
  end

  def test_circle_accessors
    pos_x = -6545.00214
    pos_y = 9534**41
    radius = 10**-15
    circle = Circle.new pos_x, pos_y, radius
    assert_equal pos_x, circle.pos_x
    assert_equal pos_y, circle.pos_y
    assert_equal radius, circle.radius
  end

  def teardown; end
end
