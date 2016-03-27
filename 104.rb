

class Pandigital_Fibonacci_Ends < ProjectEulerEngine

  attr_accessor :data

  def initialize
    super
    @data = {}
  end


  def find_it()
    puts 'Find the first Fibonacci number for which the first nine digits AND the last nine digits are 1-9 pandigital.'

    # naive version:
    # move upwards through the fibonacci numbers, checking each one to see if it satisfies the double constraint.
    # we know from the problem (https://projecteuler.net/problem=104) that we can start this at F(2749) (the two-thousand-seven-hundred-and-forty-ninth fibonacci number), which is 575 digits long.


  end

  # this method can be fleshed out here or in the functions.rb - where it will live when we are done.
  def is_pandigital(x)
    # uses all digits 1 - 9 so it must be nine digits long, etc.
    # multiply all 9 digits together to try to match a constant?
    # return boolean.
  end

end


