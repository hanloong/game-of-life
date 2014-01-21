class World

end

class Cell
  attr_reader :x, :y, :alive

  def initialize(x=0,y=0)
    @x = x
    @y = y
    @alive = false
  end

  def resurrect
    @alive = true
  end

  def neighbours
    []
  end
end
