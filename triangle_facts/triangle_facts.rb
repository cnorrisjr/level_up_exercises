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

  def right?
    puts 'This triangle is also a right triangle!' if angles.include?(90)
  end

  def display_triangle_type
    puts 'This triangle is equilateral!' if equilateral?
    puts 'This triangle is isosceles!' if isosceles?
    puts 'This triangle is scalene!' if scalene?
    puts "This triangle is also a right triangle" if right?
  end

  def recite_facts
    puts 'The angles of this triangle are ' + angles.join(',')
    display_triangle_type
    puts ''
  end

  def angles
    [calculate_angle(side1, side2, side3),
     calculate_angle(side2, side1, side3),
     calculate_angle(side3, side1, side2)]
  end

  def calculate_angle(unknown_leg, leg_1, leg_2)
    numerator = (leg_1**2 + leg_2**2 - unknown_leg**2)
    denominator = (2.0 * leg_1 * leg_2)

    radians_to_degrees(Math.acos((numerator) / denominator))
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
