require_relative 'board'

class Player

  attr_reader :board, :hits, :misses

  def initialize
    @board = Board.new
    @hits = 0
    @misses = 0
  end


  #
  # def ship_position ship
  #   board.
  # end

  def place_destroyer position, orientation
    positions = orientation
    self.place_on_board((destroyer = Ship.new 5), positions)
  end

  def place_sailboat position
    self.give_position((sailboat = Ship.new 2), position)
  end

  private

  def get_positions ship
  end

  def place_on_board ship, positions
    board.accept_ship ship, positions
  end
end
