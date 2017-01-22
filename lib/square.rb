class Square
attr_accessor :side, :x, :y

  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    @length = side
  end

  def width
    @width = side
  end

  def diameter
    diagonal = (length * length) + (width * width)
    Math::sqrt(diagonal)
  end

  def perimeter
    4 * side
  end

  def area
    length * width
  end

  def contains_point?(a, b)
    half_length = (length.to_f/2)
    if a >= (@x - half_length) && a <= (@x + half_length) && b >= (@y - half_length) && b <= (@y + half_length)
      true
    else
      false
    end
  end
end
