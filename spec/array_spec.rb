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
  it 'sums numbers with a base' do
    original = subject.inject(10) { |memo, element| memo + element }
    result = subject.inject_clone(10) { |memo, element| memo + element }
    expect(result).to eq original
  end
end