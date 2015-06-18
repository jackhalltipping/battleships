require 'board'

describe Board do
<<<<<<< HEAD

  it 'has a fleet of ships' do
    expect(subject).to respond_to(:fleet)
  end

  it 'has an empty fleet at the start' do
    expect(subject.fleet).to be_empty
  end

  it { is_expected.to respond_to(:place).with(2).arguments }

  it { is_expected.to respond_to(:fire).with(1).argument }

  it 'knows when the game is over i.e. fleet is empty' do
    subject.fleet = []
    expect(subject.won?).to eq true
  end

  describe 'placing' do

    it 'stores the ship in the fleet' do
      ship = double :ship, :position => ["A1"]
      allow(ship).to receive(:position=)
      allow(ship).to receive(:lives=)
      expect { subject.place(ship, 'A1') }.to change { subject.fleet.length }.from(0).to(1)
    end

    it 'sets the position of the ship as it is being placed' do
      ship = double :ship, :position => []
      allow(ship).to receive(:lives=)
      expect(ship).to receive(:position=).with(["A1"])
      subject.place(ship, 'A1')
    end

    it 'sets the position of the ship even with multiple positions' do
      ship = double :ship
      allow(ship).to receive(:position).and_return(['A1', 'A2'])
      allow(ship).to receive(:lives=)
      expect(ship).to receive(:position=).with(["A1", "A2"])
      subject.place(ship, "A1, A2")
    end

    it 'doesnt allow you to overlap ships' do
      subject.placed_ships = ["A1"]
      ship = double :ship, :position= => [], :lives= => 1, :position => 'A1'
      expect { subject.place(ship, "A1") }.to raise_error "You cant place a ship here"
    end
  end

  describe 'firing' do

    it 'registers a hit when called' do
      ship = double :ship, :position => ['A1'], :hit => 'A1', :lives => 1
      subject.fleet << ship
      expect(subject).to receive(:puts_hit)
      subject.fire('A1')
    end

    it 'registers a miss when called but no boat in location' do
      ship = double :ship, :position= => ['A2'], :position => ['A2']
      allow(ship).to receive(:lives=)
      subject.place(ship, 'A2')
      expect(subject.fire('A1')).to eq('Miss!')
    end

    it 'hits the ship when firing a location with a ship in it' do
      ship = double :ship, :position => ['A1'], :lives => 1
      subject.fleet << ship
      expect(ship).to receive(:hit).with('A1')
      subject.fire('A1')
    end

    it 'deletes a ship from the fleet if it is out of lives' do
      ship = double :ship, :lives => 0, :position => ["A1"], :hit => "A1"
      subject.fleet << ship
      expect { subject.fire("A1") }.to change { subject.fleet.length }.by(-1)
    end
  end
end
=======
  let(:ship) {double :ship}
  let(:ship1) {double :ship}
  let(:ship2) {double :ship}
  let(:ship3) {double :ship, 2}

  it { is_expected.to respond_to(:accept).with(2).argument }

  it "is an empty board on initialization" do
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq true
  end

describe "accept ship" do

  it "places ship in location" do

    subject.accept :ship, :A1
    expect(subject.board).to eq [{coords: :A1, ship: :ship}]
  end

  it "has a ship once one is placed" do
    subject.accept :ship, :A1
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq false
  end

  it "can accept 2 ships" do
    subject.accept :ship1, :A1
    subject.accept :ship2, :A2
    expect(subject.board).to eq [{coords: :A1, ship: :ship1}, {coords: :A2, ship: :ship2}]
  end

  it "raises error when location occupied" do
    subject.accept :ship1, :A1
    expect{ subject.accept :ship2,:A1 }.to raise_error 'location occupied'
  end

  it 'raises error when location is not on board' do
    expect{ subject.accept :ship1, :X3 }.to raise_error 'invalid location'
  end


end

describe "place" do

  it "places ship with 2 coords" do
    subject.place :ship3, :A1
    expect(subject).to eq [{coords: :A1, ship: :ship3}, {coords: :A2, ship: :ship3}]
  end
end

describe "report" do

  it "can report a miss" do
    response = subject.report :A1
    expect(response).to eq "Miss"
  end

  it "can report a hit" do
    subject.accept :ship, :A1
    response = subject.report :A1
    expect(response).to eq "Hit"
  end
end



end

# xit 'with size 2' do
#   ship1 = double :ship, size: 2
#   subject.accept ship1, :A1
#   expect(subject.board.size).to eq 2
# end
>>>>>>> b4af8d3ed46509c2920654e89a9291c3d373aec4
