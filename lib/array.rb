class Array
  def inject_clone *args
    if args.empty? || args[0].is_a?(Symbol)
      memo = self[0]
      clone = self.drop(1)
    else
      memo = args[0]
      clone = self
    end
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
end
