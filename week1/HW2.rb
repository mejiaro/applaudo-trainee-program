# 2
30.times {print '-'} 
puts "\n Second exercise" 

class Histogramable_array < Array 
	def initialize() super() 
	end 
  #Lines 6 & 7 don't really do anything.
  def to_histogram() histogram = {}
		histogram.default = 0
		self.each{|i| histogram[i]+=1}
		histogram
  end
end

array = Histogramable_array.new
puts "Enter the number of elements to analyze:"
number = gets.chomp.to_i
while number <= 0
  puts "Please enter a valid number!"
  number = gets.chomp.to_i
end 
puts "Enter the elements of the array: "
for i in (0 ... number)
  array.push(gets.chomp.to_i)
end

puts array.to_s


puts array.to_histogram

#Use more descriptive variable names.