class BlockInjector
  attr_reader :memo, :array
  def initialize injector, block, _args
    @memo = injector.memo
    @array = injector.array
    array.each do |e|
      @memo = block.call(@memo, e)
    end
  end
end