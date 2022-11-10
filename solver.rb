class Solver
  # negative integer is given it should raise an exception.
  def factorial(num)
    raise ArgumentError, 'must be greater than or equal to 0' if num.negative?

    (1..num).inject(:*) || 1
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    (1..num).map do |i|
      if (i % 15).zero?
        'FizzBuzz'
      elsif (i % 3).zero?
        'Fizz'
      elsif (i % 5).zero?
        'Buzz'
      else
        i
      end
    end
  end
end

fun = Solver.new.factorial(5)
puts fun
# => 120

rev = Solver.new.reverse('foobar')
puts rev
# => 'raboof'

fb = Solver.new.fizzbuzz(15)
puts fb
# => [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz']
