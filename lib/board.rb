class Board

  attr_reader :board

  def initialize
    @board = [{coords: "A1", ship: nil}]
  end

  def accept ship, coords
    board.pop
    board << {coords: "A1", ship: ship}
  end

end