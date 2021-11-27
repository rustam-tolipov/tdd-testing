# TDD Test Driven Development
class Solver
  def factorial(n)
    if n.zero?
      1
    else
      n * factorial(n - 1)
    end
  end

  def reverse(str)
    if str.length.zero?
      ''
    else
      str[-1] + reverse(str[0..-2])
    end
  end

  def fizzbuzz(n)
    if (n % 15).zero?
      'FizzBuzz'
    elsif (n % 3).zero?
      'Fizz'
    elsif (n % 5).zero?
      'Buzz'

      # returns the number when given a number not divisible by 3 or 5
    elsif n % 3 != 0 && n % 5 != 0
      n
    end
  end
end
