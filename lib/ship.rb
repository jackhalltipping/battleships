class Ship

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


end
