require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(Solver.new.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(Solver.new.factorial(1)).to eq(1)
    end

    it 'returns 2 for 2' do
      expect(Solver.new.factorial(2)).to eq(2)
    end

    it 'returns 6 for 3' do
      expect(Solver.new.factorial(3)).to eq(6)
    end

    it 'returns 24 for 4' do
      expect(Solver.new.factorial(4)).to eq(24)
    end

    it 'returns 120 for 5' do
      expect(Solver.new.factorial(5)).to eq(120)
    end

    it 'raises an exception for negative integers' do
      expect { Solver.new.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns "raboof" for "foobar"' do
      expect(Solver.new.reverse('foobar')).to eq('raboof')
    end

    it 'returns "gnirts" for "string"' do
      expect(Solver.new.reverse('string')).to eq('gnirts')
    end
  end

  describe '#fizzbuzz' do
    it 'returns [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"] for 15' do
      expect(Solver.new.fizzbuzz(15)).to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz',
                                             13, 14, 'FizzBuzz'])
    end
  end
end
