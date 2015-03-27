require 'array'

describe Array do
  subject { [1, 2, 3] }
  it 'sums numbers via inject' do
    original = subject.inject { |memo, element| memo + element }
    result = subject.inject_clone { |memo, element| memo + element }
    expect(result).to eq original
  end
  it 'subtracts numbers via inject' do
    original = subject.inject { |memo, element| memo - element }
    result = subject.inject_clone { |memo, element| memo - element }
    expect(result).to eq original
  end
  # it 'sums numbers with a base' do
  #   expect(subject.inject_clone(&operation)).to eq subject.inject(&operation)
  # end
end