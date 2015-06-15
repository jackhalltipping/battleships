require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place ship
    ships << ship
  end

  def report_miss
    'miss!'
  end

  def receive_hit guess
    hit = false
    ships.each do |ship|
      hit = true if ship.position? == guess
    end
    if hit
      'hit!'
    else
      report_miss
    end
  end
end
