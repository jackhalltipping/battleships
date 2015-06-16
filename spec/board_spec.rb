require 'board'

describe Board do

  it { is_expected.to respond_to(:accept).with(2).argument }

  it "is an empty board on initialization" do
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq true
  end

  it "has a ship once one is placed" do
    ship = double :ship
    subject.accept ship, :A1
    emptycheck = subject.board.all?{ |x| x[:ship].nil? }
    expect(emptycheck).to eq false
  end

  it "is has placed ship in location" do
    ship = double :ship
    subject.accept ship, :A1
    expect(subject.board).to eq [{coords: :A1, ship: ship}]
  end

  it "can report a miss" do
    response = subject.report :A1
    expect(response).to eq "Miss"
  end

  it "can report a hit" do
    ship = double :ship
    subject. accept ship, :A1
    response = subject.report :A1
    expect(response).to eq "Hit"
  end


end
