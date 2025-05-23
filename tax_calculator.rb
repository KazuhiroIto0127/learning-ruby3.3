# frozen_string_literal: true

class TaxCalculator
  def initialize(name, &block)
    @name = name
    @block = block
  end

  def get_tax(amount)
    "#{@name} on #{amount} = #{@block.call(amount)}"
  end
end

tc = TaxCalculator.new('Sales tax') { |amt| amt * 0.075 }
puts tc.get_tax(100)
puts tc.get_tax(200)
