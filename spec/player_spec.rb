require 'player'

describe Player do
  let(:ship) {double :ship}
  let (:board) {double :board}
  let (:hits) {double :hits}
  let (:misses) {double :misses}

  it "has empty board on initialisation" do
    emptyboard = subject.board.all?{ |x| x[:board].nil? }
    expect(emptyboard).to eq true
  end

  it "has no hits on initialisation" do
    no_hits = subject.board.all?{ |x| x[:hits].nil? }
    expect(no_hits).to eq true
  end

  it "has no misses on initialisation" do
    no_misses = subject.board.all?{ |x| x[:misses].nil? }
    expect(no_misses).to eq true
  end

  it "can give ship a position" do
    subject.give_position :ship, :A1
    expect(subject.ship_position :ship).to eq :A1
  end
end
