# Heather Reeve-Black
# May 2014
# Program for finding the gcd of two integers

# get the user input
puts "This program finds the greatest common divisor of two numbers, using Euclid's algorithm."
print "Please enter two positive integers (separated by a space): "
number_string = gets.chomp

# separate the input into two integers
number_pair = number_string.partition(" ")
a = Integer(number_pair[0])
b = Integer(number_pair[2])

# perform Euclid's algorithm
if a>=b
    n = a
    m = b
else
    n = b
    m = a
end
while m!=0
    p = n/m     # p is floor(n/m)
    q = n%m     # q is the remainder
    n = m       # update the values of n and m
    m = q
end

# print the result
puts "gcd(#{a}, #{b})=#{n}"