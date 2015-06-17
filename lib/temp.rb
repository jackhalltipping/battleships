class Temp

  def letter_coords
    letters_coords = [:A..:J]
  end

  def number_coords
    number_coords = [1..10]
  end
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
end

# number_coords = [1..10]
# coords_together = letters_coords.product(number_coords)
