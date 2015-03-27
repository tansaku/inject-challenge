require 'injector'
require 'arg_injector'
require 'raw_injector'
require 'symbol_injector'
require 'block_injector'

class InjectorFactory
  def self.create array, args, block
    klass = no_args_or_symbol?(args) ? RawInjector : ArgInjector
    injector = klass.new array, args
    klass = args.index_of_symbol ? SymbolInjector : BlockInjector
    klass.new(injector, block, args)
  end

  def self.no_args_or_symbol? args
    args.empty? || args[0].is_a?(Symbol)
  end
end