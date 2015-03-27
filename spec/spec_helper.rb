require 'simplecov'
require 'byebug'
require 'coveralls'
Coveralls.wear!

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start
