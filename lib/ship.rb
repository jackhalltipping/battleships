class Ship
<<<<<<< HEAD
  attr_accessor :position, :lives

  def initialize
    @position = []
  end

  def hit(location)
    self.lives = self.lives - 1
    position.delete_if { |coordinate| coordinate == location }
  end
=======

  attr_reader :damage
  attr_reader :size


  def initialize size = 1
    @size = size
    @damage = 0
  end


  def hit
    @damage += 1
  end

  def sunk?
    size == damage
  end

private


>>>>>>> b4af8d3ed46509c2920654e89a9291c3d373aec4
end
