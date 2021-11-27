require './solver'
require 'rspec'

RSpec.describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'returns 120 when given 5' do
      expect(@solver.factorial(5)).to eq(120)
    end
  end

  describe '#reverse' do
    it 'returns the string reversed' do
      expect(@solver.reverse('abc')).to eq('cba')
    end
  end

  describe '#fizzbuzz' do
    it 'returns Fizz when given 3' do
      expect(@solver.fizzbuzz(3)).to eq('Fizz')
    end

    it 'returns Buzz when given 5' do
      expect(@solver.fizzbuzz(5)).to eq('Buzz')
    end

    it 'returns FizzBuzz when given 15' do
      expect(@solver.fizzbuzz(15)).to eq('FizzBuzz')
    end

    it 'returns the number when given a number not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(1)).to eq(1)
    end
  end
end

# run the tests
RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end


# In RSpec, what does this matcher mean? *
# expect { }.to raise_error(ErrorClass)
# what does this matcher abowe mean? 
