require 'ship'

describe Ship do

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

end
