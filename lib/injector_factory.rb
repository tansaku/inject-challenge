require 'injector'
require 'arg_injector'
require 'raw_injector'

class InjectorFactory
  def self.create array, args, block
    klass = no_args_or_symbol?(args) ? RawInjector : ArgInjector
    injector = klass.new array, args
    injector.process_symbol args if args.index_of_symbol
    injector.process_block block unless args.index_of_symbol
    injector
  end

  def self.no_args_or_symbol? args
    args.empty? || args[0].is_a?(Symbol)
  end
end