class Array
  def inject_clone memo = (default = true; self[0])
    clone = default ? self.drop(1) : self
    clone.each { |e| memo = yield memo, e }
    memo
  end
end
