module Greeting
  def hello
    puts 'hello'
  end
end

class A
  include Greeting
end

class B
  extend Greeting
end

A.new.hello
# A.hello --> NG
B.hello
# B.new.hello --> NG
