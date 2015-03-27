class Array
  def inject_clone *args
    memo = no_args_or_symbol?(args) ? self[0] : args[0]
    clone = no_args_or_symbol?(args) ? self.drop(1) : self

    if args.index_of_symbol
      clone.each { |e| memo = memo.send(args[args.index_of_symbol], e) }
    else
      clone.each { |e| memo = yield memo, e }
    end
    memo
  end

  def index_of_symbol
    self.map { |i| i.is_a? Symbol }.index(true)
  end

  def no_args_or_symbol? args
    args.empty? || args[0].is_a?(Symbol)
  end
end
