class Triangle
  # write code here
  attr_reader :sides
  def initialize( side1, side2, side3 )
    @sides = []
    self.sides << side1
    self.sides << side2
    self.sides << side3
  end
  
  def kind 
       total = self.sides.reduce(:+)
    if self.sides.any?{ |side| side <= 0 || total - side <= side}
      raise TriangleError
    elsif sides.uniq.length == 1
      type = :equilateral
    elsif sides.uniq.length == 2
      type = :isosceles
    else
      type = :scalene
    end
  end
end 
  class TriangleError < StandardError
    # triangle error code
  
end
