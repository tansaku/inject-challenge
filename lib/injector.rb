class Injector
  attr_reader :memo, :array

  def process_symbol args
    array.each do |e|
      @memo = @memo.send(args[args.index_of_symbol], e)
    end
    @memo
  end

  def process_block block
    array.each do |e|
      @memo = block.call(@memo, e)
    end
    @memo
  end
end
