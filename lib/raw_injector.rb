require 'injector'

class RawInjector < Injector
  def initialize array, _args
    @memo = array[0]
    @array = array.drop(1)
  end
end