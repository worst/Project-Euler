#!/usr/bin/env ruby


##############################################################################
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
##############################################################################

# Use GCD to figure this out?

def lcm(a, b)
  (a * b).abs / gcd(a, b)
end

def gcd(a, b)
  return a if b.eql?(0)
  
  # ruby floors by default on integer division i think?
  return gcd(b, a - b * (a/b))
end

