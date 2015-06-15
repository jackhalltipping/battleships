require_relative 'board'

class Player
  def initialize board
    @board = board
    @hits = []
    @misses = []
  end
end
