# 1
puts " First exercise"

puts "How many times?"
repetitions = gets.to_i
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for i in (1 .. repetitions)
	res = alphabet.chars.to_a.repeated_permutation(i).to_a
	res.each{
	| elem | elem.each{ | c | print c};
	print " "
}
end