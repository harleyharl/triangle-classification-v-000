require 'pry'

class TriangleError < StandardError

  def message
   "this is not a valid triangle"
  end

end

class Triangle

  def initialize(length1, length2, length3)
    # Triangle.new(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  # def valid?
  #   @length1 + @length2 > @length3
  #   @length1 + @length3 > @length2
  #   @length2 + @length3 > @length1
  #   @length1 == 0 || @length2 == 0 || @length3 == 0
  # end

  def kind
    if @length1 == @length2 && @length1 == @length3
      :equilateral
    elsif
      @length1 == @length2 && @length1 != @length3 || @length2 == @length3 && @length2 != @length1 || @length3 == @length1 && @length3 != @length2
      :isosceles
    elsif
      @length1 != @length3 && @length3 != @length2
      :scalene
     else
      @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      begin
          raise TriangleError
      end
    end
  end
      #raise error




  #     @length1 + @length2 > @length3 || @length1 + @length3 > @length2 || @length2 + @length3 > @length1 || @length1 == 0 || @length2 == 0 || @length3 == 0
  #     begin
  #
  #   end
  #
  # end

end
