

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

    # do we need a method F that gets the value of F(2749) ?
    # or maybe an F that gets the first nine digits and the last nine digits?

    # when we have an answer, we put it here
    @answer = 42

    # if we are looping over something massive, we can count iterations thusly:
    @iterations += 1
    @iterations += 1
    @iterations += 1
    @iterations += 1

    # sophisticated ideas:
    # this is where the math professor says something like, "Look, if you calculate three of these this pattern emerges," and then you realize that you only need to do one little thing and you have the answer.

    # add your ideas here

    # can we know anything about the pattern of occurrences of fibonacci numbers with the first nine pandigita? how about the last nine? if every hundredth fibonacci number is pandigital for the first nine and every 600th is pandigital in the last nine, is this just a simple pattern?

  end

  # this method can be fleshed out here or in the functions.rb - where it will live when we are done.
  def is_pandigital(x)
    # uses all digits 1 - 9 so it must be nine digits long, etc.
    # multiply all 9 digits together to try to match a constant?
    # return boolean.

    # we had conversationally assigned this to Nate.
  end

end


