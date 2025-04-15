# frozen_string_literal: true

def greet(...)
  hello(...)
end

def hello(name, message = 'Hello')
  puts "#{message}, #{name}!"
end

greet('Dave')
greet('Andy', 'Hi')

# Output:
# Hello, Dave!
# Hi, Andy!

def demo(*arg, **kwargs, &block)
  puts "arg: #{arg.inspect}"
  puts "kwargs: #{kwargs.inspect}"
  block.call if block_given?
end

demo(1, 2, 3, a: 4, b: 5) do
  puts 'This is a block'
end

# Output:
# arg: [1, 2, 3]
# kwargs: {:a=>4, :b=>5}
# This is a block

def test(num, &block)
  puts "Number: #{num}"
  block.call(num * 2) if block_given?
end

test(3) do |val|
  puts "Block value: #{val}"
end
