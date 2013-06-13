# Fizzbuzz!: given a number, n, print every number from 1 to n,
# replacing every multiple of 3 with "fizz", every multiple of
# 5 with "buzz", every multiple of 3 & 5 with "fizzbuzz", and
# adding a "!" suffix to every multiple of 15.

print "Give a number: "
n = gets.chomp.to_s.to_i

def multiple?(n,x)
  # check if n is a multiple of x
  n % x == 0
end

=begin
# test above
puts "multiple of 3?: " + multiple?(n,3).to_s
puts "multiple of 5?: " + multiple?(n,5).to_s
puts "multiple of 15?: " + multiple?(n,15).to_s
=end

for i in (1..n)
  i_array = []
  i_array.push("fizz") if multiple?(i,3)
  i_array.push("buzz") if multiple?(i,5)
  i_array.push("!") if multiple?(i,15)
  i_array.push(i) if i_array.empty?
  foo = i_array.join("").to_s
  print foo + " "
end
