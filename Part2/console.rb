require './circle.rb'

point = Point.new 10, 3
circle = Circle.new 3, 6, 10
print "#{circle}\n"
print "#{point}\n"
print "#{point.pos_x} #{point.pos_y}\n"
print "#{circle.pos_x} #{circle.pos_y} #{circle.radius}\n"
