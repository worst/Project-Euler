#!/usr/bin/env ruby

##############################################################################
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
# 
# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?
##############################################################################


# NOTES:
# We don't need to test all these numbers, as any number divisible by a
# composite will also be divisible by the composites components
#
# so.. maybe first we find the composites?
#
# second thought: least common multiple?
# third thought: no, that doesn't really make sense...
# def lcm(a, b)
#   (a * b).abs / gcd(a, b)
# end
# 
# def gcd(a, b)
#   return a if b.eql?(0)
#   
#   # ruby floors by default on integer division i think?
#   return gcd(b, a - b * (a/b))
# end


h = {
      # 20 => [1, 2, 4, 5, 10],
      # 19 => [1, 19],
      # 18 => [1, 2, 3, 6, 9],
      # 17 => [1, 17]
      # 16 => [1, 2, 4, 8],
      # 1
    }
