require_relative 'ship'

class Board

<<<<<<< HEAD
  attr_accessor :fleet, :allowed_locations, :copy_of_ship_locations, :placed_ships
  def initialize
    @fleet = []
    @allowed_locations = ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10", "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10", "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10", "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10"]
    @placed_ships = []
  end

  def place(ship, location)
    fail "You cant place a ship here" if placed_ships.include?(location)
    ship.position = location.split(', ')
    self.copy_of_ship_locations = location.split(', ')
    compare
    ship.lives = ship.position.length
    fleet << ship
    placed_ships << location

  end

  def fire(location)
    fleet.each do |ship|
      if ship.position.include?(location)
        ship.hit(location)
        puts_hit
        fleet.delete_if { |ship| ship.lives == 0 }
        puts "Game over!" if won?
      else
        return 'Miss!'
      end
    end
  end

  def won?
    fleet == []
  end

  def puts_hit
    puts 'Hit!'
  end

  def compare
    allowed_locations.delete_if do |allowedLocation|
      self.copy_of_ship_locations.include?(allowedLocation)
    end
  end
end
=======
COORDS = [:A1, :A2, :A3, :A4, :A5, :A6, :A7, :A8, :A9, :A10,
          :B1, :B2, :B3, :B4, :B5, :B6, :B7, :B8, :B9, :B10,
          :C1, :C2, :C3, :C4, :C5, :C6, :C7, :C8, :C9, :C10,
          :D1, :D2, :D3, :D4, :D5, :D6, :D7, :D8, :D9, :D10,
          :E1, :E2, :E3, :E4, :E5, :E6, :E7, :E8, :E9, :E10,
          :F1, :F2, :F3, :F4, :F5, :F6, :F7, :F8, :F9, :F10,
          :G1, :G2, :G3, :G4, :G5, :G6, :G7, :G8, :G9, :G10,
          :H1, :H2, :H3, :H4, :H5, :H6, :H7, :H8, :H9, :H10,
          :I1, :I2, :I3, :I4, :I5, :I6, :I7, :I8, :I9, :I10,
          :J1, :J2, :J3, :J4, :J5, :J6, :J7, :J8, :J9, :J10]

  attr_reader :board

  def initialize
    @board = []
  end

  def accept ship, position
    fail 'location occupied' if occupied?(position)
    fail 'invalid location' if invalid?(position)
    ## repeat checks for entire length of ship
    board << {coords: position, ship: ship}
  end

  def report position
    status = board.select{ |x| x[:coords] == position }
    status == [] ? "Miss" : "Hit"
  end

  def occupied? position
    board.select{ |x| x[:coords] == position } != []
  end

  def invalid? position
    !COORDS.include?(position)
  end

end
# player places ship on board
# def place ship, position
#   ship.size.times do
#     board << {coords: position, ship: ship}
#     position = position.next
#   end
#     @position = []
# end

# def find_next_coordinate coordinate, direction
#   next_coordinate = direction == :horizontal ? next_coordinate.next :
# end


#"place ship at A1, A2" => ship = [A1, A2]
#{}"place ship at A1, A2" => board << {A1. ship}, {A2,ship}
>>>>>>> b4af8d3ed46509c2920654e89a9291c3d373aec4
