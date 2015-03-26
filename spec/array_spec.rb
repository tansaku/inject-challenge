require 'array'

describe Array do
  subject { [1, 2, 3] }
  it 'sums numbers via inject' do
    operation = -> (memo, element) { memo += element }
    expect(subject.inject_clone(&operation)).to eq subject.inject(&operation)
  end
  it 'subracts numbers via inject' do
    operation = -> (memo, element) { memo -= element }
    expect(subject.inject_clone(&operation)).to eq subject.inject(&operation)
  end
end