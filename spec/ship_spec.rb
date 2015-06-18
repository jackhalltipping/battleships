require 'ship'

describe Ship do

<<<<<<< HEAD
  it 'has a position' do
    expect(subject).to respond_to(:position)
  end

  it 'has a record of the number of lives' do
    expect(subject).to respond_to(:lives)
  end

  it { is_expected.to respond_to(:hit).with(1).argument }

  describe 'hit' do
    it 'subtracts lives by 1 when hit' do
      subject.lives = 1
      expect { subject.hit('A1') }.to change { subject.lives }.by(-1)
    end
    
    it 'deletes a position from its position array if hit' do
      ship = Ship.new
      ship.lives = 1
      ship.position = ["A1"]
      expect { ship.hit('A1') }.to change { ship.position.length }.by(-1)
    end
  end
=======
it "can be hit" do
  subject.hit
  expect(subject.damage).to eq 1
end

it "can register multiple hits" do
  2.times { subject.hit }
    expect(subject.damage).to eq 2
  end

it "is sunk when hit enough times" do
  subject.size.times { subject.hit }
  expect(subject).to be_sunk
end

>>>>>>> b4af8d3ed46509c2920654e89a9291c3d373aec4
end
