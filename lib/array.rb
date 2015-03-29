require_relative 'injector_factory'

class Array
  def inject_clone *args, &block
    InjectorFactory.create(self, args, block).memo
  end

  def index_of_symbol
    self.map { |i| i.is_a? Symbol }.index(true)
  end
end
