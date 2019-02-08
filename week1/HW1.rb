# 1
puts "First exercise"

puts "How many times?"
repetitions = gets.to_i
puts "String to permute:"
alphabet = gets.chomp

for i in (1 .. repetitions)
	res = alphabet.chars.repeated_permutation(i).to_a
  #the `to_a` after `chars` is unnecesary. that method returns an Array.
	res.each {
	  | elem | elem.each{ | c | print c };
	  print " "
  }
puts
end


#This is not what the exercise was supposed to do...