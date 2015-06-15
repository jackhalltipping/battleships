require_relative 'ship'

class Board

  attr_accessor :ships

  def initialize
    @ships = []
  end

  def place ship
    ships << ship
  end

  def receive_hit guess
    hit = false
    ships.each do |ship|
      hit = true if ship.position? == guess
    end
    if hit
      report_hit
    else
      report_miss
    end
  end

  def report_miss
    'miss!'
  end

  def report_hit
    'hit!'
  end
end
