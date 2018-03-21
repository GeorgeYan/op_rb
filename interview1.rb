str = "Ruby is an object oriented programming language"
char = []
count =[]
str.each_char do |c|
  char.include?(c) ? count[char.index(c)] += 1 : char<<c
  count[char.size-1]=1
end
char.each do |i|
  print i
  count[char.index(i)].times{print "*"}
  print "\n"
end
