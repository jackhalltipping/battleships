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

  def recieve_hit guess
    unless ships.any?{|x| x == 'guess'} == true
      report_miss
    end
  end
end
