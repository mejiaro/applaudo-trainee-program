# 2
30.times {print '-'} 
puts "\n Second exercise" 

class Histogramable_array < Array 
	def initialize() super() 
	end 
	def to_histogram() histogram = {}
		histogram.default = 0
		self.each{|i| histogram[i]+=1}
		histogram
  end
end

a = Histogramable_array.new
puts "Enter the number of elements to analyze:"
n = gets.chomp.to_i
puts "Enter the elements of the array: "
for i in (0 ... n)
  a.push(gets.chomp.to_i)
end

puts a.to_s


puts a.to_histogram
