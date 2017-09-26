require 'pp'

x = "Eliana Aerts        1526"
w = "Richard Bustamante        5165"
y = "Richard Bustamante        5165"

s = Hash.new
x = x.split('       ',2)
w = w.split('       ',2)
y = y.split('       ',2)
s[x[1]] = x[0]
s[w[1]] = w[0]
s[y[1]] = y[0]

puts s[x[1]]
puts s
puts s
=begin
s.push(w)
s.each do |element|
    y = element.split('       ',2)
    a[y[0]]= y[1]
    puts a[y[0]]
    puts a.keys
end
=end

=begin
file = File.open(@filename,'r')
file.each_line do |element|
    @lines = element.split(' ',2)
    @lines = Subscriber.new(@lines[1],@lines[2])
end
=end