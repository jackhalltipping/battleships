class FindCoords

  LETTER_COORDS = ("A".."J").to_a
  NUMBER_COORDS = ("1".."10").to_a

attr_accessor :grid

def initialize
  @grid = {}
end

  def creating_board
    ("A".."J").each do |letter|
      (1..10).each do |number|
        grid[("#{letter}#{number}").to_sym] = 'water'
      end
    end
  end

  def creating_board2
    board = ('A'..'J').zip(1..10).to_s
  end

  def next_number letter, number
    # letter = letter
    # number = number
    letter + (number + 1)
    grid[("#{letter}#{number}").to_sym] = 'ship'
  end

  def place ship, coordinate, orientation
    y = coordinate[0]
    x = coodrinate[1].to_i
    x_coordinate_range = (x...(x + ship.size)).to_a

    x_coordinate_range.each do |x_coordinate|
      x_and_y = (y + x_coordinate.to_s).to_sym
      grid[x_and_y] = ship
    end
  end

  def coord_finder

  end

  def gets_west size, position
    positions = [position]
    (size - 1).times {positions << positions.last.next }
    positions
  end


  def gets_south size, position

  end

  def self.split position
    @l = LETTER_COORDS.find_index(position[0])
    @n = NUMBER_COORDS.find_index(position[1])
  end

end



# number_coords = [1..10]
# coords_together = letters_coords.product(number_coords)
