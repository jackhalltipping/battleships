class Board

  attr_reader :board

  def initialize
    @board = [{coords: :A1, ship: nil}]
  end

  def accept ship, position
    board.pop
    board << {coords: :A1, ship: ship}
  end

  def report position
    status = board.select{ |x| x[:coords] == position }
    status[0][:ship] == nil ? "Miss" : "Hit"
  end

end
