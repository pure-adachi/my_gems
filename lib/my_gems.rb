require 'my_gems/version'

module MyGems
  class FizzBuzz
    def initialize(number)
      @number = number
    end

    def say
      return 'FizzBuzz' if (@number % 15).zero?
      return 'Buzz' if (@number % 5).zero?
      return 'Fizz' if (@number % 3).zero?

      @number.to_s
    end
  end
end
