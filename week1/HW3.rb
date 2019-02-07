# 3
30.times{print '-'}
puts "\n Third exercise"


class Histogramable_array < Array 
	def initialize() super() 
	end 
	def to_histogram() histogram = {}
		histogram.default = 0
		self.each{|i| histogram[i]+=1}
		histogram
  end
end

def mean(a)
  res = 0
  a.each{|i| res += i}
  res = res.to_f/a.length
  puts res
end
def mode(a)
  hist_a = Histogramable_array.new
  a.each{|i| hist_a.push(i)}
  res = hist_a.to_histogram.max_by{| k, v | v}
	if res[1] == 1 then puts 'There is no mode!' 
	else 
		hist_a.to_histogram.each {| elem | if elem[1] == res[1] then puts elem[0] end}
  end  
end

def median(a)
  res = 0
  if a.length % 2 != 0 then res = a[a.length/2]
  else
    res = (a[a.length/2 - 1] + a[a.length/2]) /2.to_f
  end
  puts res
end
b = Array.new
puts "Enter the number of elements to analyze:"
n = gets.chomp.to_i
while n <= 0
  puts "Please provide a correct number!"
  n = gets.chomp.to_i
end
puts "Enter the elements of the array: "
for i in (0 ... n)
  b.push(gets.chomp.to_i)
end

puts b.to_s
print 'mean: '
mean(b)
print "mode/s: \n"
mode(b)
print "median: "
median(b)
