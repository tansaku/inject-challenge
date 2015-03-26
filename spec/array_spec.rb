require 'array'

describe Array do
  subject { [1, 2, 3] }
  it 'sums numbers via inject' do
    original = subject.inject { |memo, element| memo += element }
    reworked = subject.inject_clone { |memo, element| memo += element }
    expect(reworked).to eq original
  end
end