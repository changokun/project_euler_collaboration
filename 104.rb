require 'bigdecimal'
#require 'rubygems'
#require 'fibonaccia'

class Pandigital_Fibonacci_Ends < ProjectEulerEngine

  attr_accessor :data

  
  def initialize
    super
    @data = {}
    @precision = 50
    @phi = (BigDecimal.new('5', @precision).sqrt(@precision)/BigDecimal.new('2', @precision)) + BigDecimal.new('0.5', @precision)
  end

  def f(n)
    n = BigDecimal(n, @precision)
    (@phi.power(n, @precision) - (BigDecimal.new('1', @precision) - @phi).power(n, @precision)) / BigDecimal.new('5', @precision).sqrt(@precision)
  end

  def find_it()
    puts 'Find the first Fibonacci number for which the first nine digits AND the last nine digits are 1-9 pandigital.'

    puts 'normal float phi: ', Math.sqrt(5) / 2 + 0.5
    puts 'precision: ', @precision
    puts 'bigdecimal phi: ', @phi

    x = 1
    while x < 100
      puts "#{x.to_s}: #{f(x).round.to_s}"
      @iterations += 1
      x += 1
    end


    # naive version:
    # move upwards through the fibonacci numbers, checking each one to see if it satisfies the double constraint.
    # we know from the problem (https://projecteuler.net/problem=104) that we can start this at F(2749) (the two-thousand-seven-hundred-and-forty-ninth fibonacci number), which is 575 digits long.

    # do we need a method F that gets the value of F(2749) ?
    # or maybe an F that gets the first nine digits and the last nine digits?

    # the f added here gets more accurate with higher precisions on phi, but is very slow, and I don't know how to tell when it becomes inaccurate, i.e.: at precision of 15 it should be accurate to about f(1400) but raising the precision to 50 means it is accurate to f(what?).

    # regardless, this won't work because it took six minutes to calculate f(2000) so i think we'll need something more progressive, ie looking at each f and adding the previous to get the next. 

    # when we have an answer, we put it here
    @answer = 0

    # if we are looping over something massive, we can count iterations thusly:
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


