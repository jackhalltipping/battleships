require 'board'

describe Board do
  it 'should report when no ship is at position' do
    expect(subject.report_miss).to eq 'miss!'
  end

  it 'can place ships on the board' do
    ship = double :ship, position: 'C2'
    expect(subject.place ship).to eq [ship]
  end

  it 'can check if a ship is not at position' do
    ship1 = double :ship, position?: 'C2'
    subject.place ship1
    expect(subject.receive_hit 'F1').to eq 'miss!'
  end

  it 'can check if a ship is at a position' do
    ship1 = double :ship, position?: 'C2'
    subject.place ship1
    expect(subject.receive_hit 'C2').to eq 'hit!'
  end
end
