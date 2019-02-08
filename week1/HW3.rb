# 3
30.times{print '-'}
puts "\n Third exercise"


class HistogramableArray < Array 
	def initialize() super() 
	end 
  #Lines 7 & 8 don't do anything.
  def to_histogram() histogram = {}
		histogram.default = 0
		self.each{|i| histogram[i]+=1}
		histogram
  end
end

def mean(numbers_array)
  res = 0
  numbers_array.each{|i| res += i} # look up the `sum` array method.
  res = res.to_f/numbers_array.length
  puts res
end

def mode(numbers_array)
  hist_a = HistogramableArray.new
  numbers_array.each{ |number| hist_a.push(number) }
  result = hist_a.to_histogram.max_by{| k, v | v}
  if result[1] == 1
    puts 'There is no mode!' 
  else 
		hist_a.to_histogram.each {| elem | if elem[1] == result[1] then puts elem[0] end}
  end  
end

def median(numbers_array)
  #res = 0
  if numbers_array.length % 2 != 0
    result = numbers_array[numbers_array.length/2]
  else
    result = (numbers_array[numbers_array.length/2 - 1] + numbers_array[numbers_array.length/2]) /2.to_f
  end
  puts result
end
array = Array.new
puts "Enter the number of elements to analyze:"
length = gets.chomp.to_i
while length <= 0
  puts "Please provide a correct number!"
  length = gets.chomp.to_i
end
puts "Enter the elements of the array: "
for i in (0 ... length)
  array.push(gets.chomp.to_i)
end

puts array.to_s
print 'mean: '
mean(array)
print "mode/s: \n"
mode(array)
print "median: "
median(array)

# use more declarative variable names.