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
