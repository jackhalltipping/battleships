class FindCoords

  LETTER_COORDS = ("A".."J").to_a
  NUMBER_COORDS = ("1".."10").to_a

  def self.split position
    @l = LETTER_COORDS.find_index(position[0])
    @n = NUMBER_COORDS.find_index(position[1])
  end

  def place_ship

  def gets_west position, size
    positions = [position]
    (size - 1).times {positions << positions.last.next }
    positions
  end

  # def gets_east position, size
  #   positions = [position]
  #   (size - 1).times { positions << positions.last. }
  #   positions
  # end

  def gets_south position, size
    position_reverse =  position.to_s.reverse
    positions = [position_reverse]
    (size - 1).times {positions << positions.last.next }
    positions
  end

  def place_horizontal
    position.to_s.reverse
  end

  def

  def gets

  end
end
