# frozen_string_literal: true

def time(&block)
  require 'benchmark'
  result = nil
  timing = Benchmark.measure do
    result = block.call
  end
  puts "It took: #{timing}"
  result
end
