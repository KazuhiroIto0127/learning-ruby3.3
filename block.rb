# frozen_string_literal: true

def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end

call_block { puts 'In the block' }

# Output:
# Start of method
# In the block
# In the block
# End of method

def who_says_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end

who_says_what { |person, phrase| puts "#{person} says #{phrase}" }

# Output:
# Dave says hello
# Andy says goodbye

[1, 2, 3].each { p it }

# Output:
# 1
# 2
# 3

# rubocop:disable Style/NumberedParametersLimit
[1, 2, 3].each_with_index { puts "#{_2}: #{_1}" }
# rubocop:enable Style/NumberedParametersLimit

# Output:
# 0: 1
# 1: 2
# 2: 3

def run_block(&block)
  block.call('Hello!')
end

p = proc { |x| puts x }
run_block(&p)
