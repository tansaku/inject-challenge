class Array
  def inject_clone
    memo = self[0]
    drop(1).each do |e|
      memo = yield memo, e
    end
    memo
  end
end