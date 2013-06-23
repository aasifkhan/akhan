count=0
def stringfunc
x=0
print "Enter the string:- "
str = gets
puts "The String is:- #{str}"
str.each_char{ |i|
if i=='a' || i=='e' || i=='i' || i=='o' || i=='u' 
yield 1
end
}
end

stringfunc{ |f|
count=count+f
}

puts "Number of Vowels are #{count}"

