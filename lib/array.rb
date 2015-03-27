require_relative 'injector_factory'

class Array
  def inject_clone *args, &block
    injector = InjectorFactory.create(self, args, block)
    injector.memo
  end

  def index_of_symbol
    self.map { |i| i.is_a? Symbol }.index(true)
  end
end
