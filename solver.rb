# TDD Test Driven Development
class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.positive?
      num * factorial(num - 1)
    else
      raise ArgumentError, 'Only positive numbers are allowed'
    end
  end

  def reverse(str)
    if str.length.zero?
      ''
    else
      str[-1] + reverse(str[0..-2])
    end
  end

  def fizzbuzz(num)
    if (num % 15).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'

      # returns the number when given a number not divisible by 3 or 5
    elsif num % 3 != 0 && num % 5 != 0
      num
    end
  end
end
