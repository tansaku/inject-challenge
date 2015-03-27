class SymbolInjector
  attr_reader :memo, :array
  def initialize injector, _block, args
    @memo = injector.memo
    @array = injector.array
    array.each do |e|
      @memo = @memo.send(args[args.index_of_symbol], e)
    end
  end
end