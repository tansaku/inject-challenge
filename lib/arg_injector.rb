require 'injector'

class ArgInjector < Injector
  def initialize array, args
    @memo = args[0]
    @array = array
  end
end