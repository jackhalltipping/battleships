require 'board'

describe Board do
  it 'should report when no ship is at position' do
    expect(subject.report_miss).to eq 'miss!'
  end

  it 'can place ships on the board' do
    ship = double :ship, position: 'C2'
    expect(subject.place ship).to eq [ship]
  end

  it 'can check whether a ship is at position' do
    ship1 = double :ship, position: 'C2'
    ship2 = double :ship, position: 'D4'
    ship3 = double :ship, position: 'E5'
    expect(subject.recieve_hit 'F1').to eq 'miss!'
  end
end
