class Array
  def inject_clone *args
    if args.empty?
      memo = self[0]
      clone = self.drop(1)
      clone.each { |e| memo = yield memo, e }
    elsif args[0].is_a? Symbol
      memo = self[0]
      clone = self.drop(1)
      clone.each { |e| memo = memo.send(args[0], e) }
    elsif args[1].is_a? Symbol
      memo = args[0]
      clone = self
      clone.each { |e| memo = memo.send(args[1], e) }
    else
      memo = args[0]
      clone = self
      clone.each { |e| memo = yield memo, e }
    end
    memo
  end
end
