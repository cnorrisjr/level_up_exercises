class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end

  def equilateral?
    side1 == side2 && side2 == side3
  end

  def isosceles?
    [side1, side2, side3].uniq.length == 2
  end

  def scalene?
    side1 != side2 && side2 != side3 && side1 != side3
  end

  def right_angle?
    puts 'This triangle is also a right triangle!' if @angles.include?(90)
  end

  def determine_triangle
    puts 'This triangle is equilateral!' if equilateral?
    puts 'This triangle is isosceles!' if isosceles?
    puts 'This triangle is scalene!' if scalene?

    right_angle?
  end

  def recite_facts
    @angles = [calculate_angle(side1, side2, side3),
               calculate_angle(side2, side1, side3),
               calculate_angle(side3, side1, side2)]

    puts 'The angles of this triangle are ' + @angles.join(',')

    determine_triangle
    puts ''
  end

  def calculate_angle(uknown_leg, leg_1, leg_2)
    radians_to_degrees(Math.acos((leg_1**2 + leg_2**2 - uknown_leg**2) /
     (2.0 * leg_1 * leg_2)))
  end

  def radians_to_degrees(rads)
    (rads * 180 / Math::PI).round
  end
end

triangles = [
  [5, 5, 5],
  [5, 12, 13],
  [6, 6, 10],
]
triangles.each do |sides|
  tri = Triangle.new(*sides)
  tri.recite_facts
end
