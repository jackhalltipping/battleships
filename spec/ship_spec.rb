require 'ship'

describe Ship do
  it 'creates a ship with a position' do
     ship1 = Ship.new 'C2'
     expect(ship1.position).to eq 'C2'
  end
end
