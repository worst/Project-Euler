#!/usr/bin/env ruby

require 'rational'

##############################################################################
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
# 
# What is the smallest number that is evenly divisible by all of the numbers
# from 1 to 20?
##############################################################################

n = ARGV[0].to_i

puts "#{(1..n).reduce(1) {|m, v| m.lcm v}}"

# sigh... this is what i was trying to do all along :(



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
#
# More thoughts...
# thinking about it logically...
# if something is divisible by 20, it's divisible by 10, 5, 4, 2, and 1..
# because it is a prime composite...
# do we just need to find the primes in 1 through 20?
#
#
# Primes:
# 2, 19, 17, 13, 11, 7, 5, 3
# no, that won't work...
# gotta work out the prime factors?
#
# 20 covers: 20, 10, 5, 4, 2, 1
# 19 covers: 19, 1
# 18 covers: 18, 9, 2, 1
# 17 covers: 17, 1
# 16 covers: 16, 8, 4, 2, 1
# 15 covers: 15, 5, 3, 1
# 14 covers: 14, 7, 2, 1
# 13 covers: 13, 1
# 12 covers: 12, 6, 4, 3, 2, 1
# 11 covers: 11, 1
# 10 is covered by 20
# 9 is covered by 18
# 8 is covered by 16
# 7 is covered by 14
# 6 is covered
# 5 is covered
# 4 is covered
# 3 is covered
# 2 is covered
# 1 is covered...
# answer is:
# 20 * 19 * 18 * 17 * 16 * 16 * 14 * 13 * 12 * 11 = ?


# THIS IS SLOW AS SHIT AND UGLY!!!!



# nums = (1..n).to_a
# 
# # we can get rid of any number that is a factor of an already existing number
# # e.g. anything divisible by 20 is also divisible by 10, 5, 4, 2, and 1
# n.downto(1) {|x| nums.delete_if {|y| x % y == 0 && x != y}}
# 
# # nums.each {|n| puts "#{n}"}
# # 
# # exit
# #result = nums.reduce(:*)
# 
# # result = 0
# # begin
# #    result += 2
# # end while nums.reduce(0) {|m, v| m += result % v} != 0
# # the reduce at the end of the while loop is making this shit extra slow...
# # would be much faster with nested ifs and a next statement...
# 
# result = 0
# begin
#   result += 2
#   
#   if result % 20 != 0
#     next
#   elsif result % 19 != 0
#     next
#   elsif result % 18 != 0
#     next
#   elsif result % 17 != 0
#     next
#   elsif result % 16 != 0
#     next
#   elsif result % 15 != 0
#     next
#   elsif result % 14 != 0
#     next
#   elsif result % 13 != 0
#     next
#   elsif result % 12 != 0
#     next
#   elsif result % 11 != 0
#     next
#   end
#   break
# end while true
# puts "#{result}"

