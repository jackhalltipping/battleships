class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def accept ship, position
    ## fail if position already exists
    ## fail if position is not on board
    ## repeat checks for entire length of ship

    board << {coords: position, ship: ship}
  end

  def report position
    status = board.select{ |x| x[:coords] == position }
    status == [] ? "Miss" : "Hit"
  end

end



"place ship at A1, A2" => ship = [A1, A2]
"place ship at A1, A2" => board << {A1. ship}, {A2,ship}

