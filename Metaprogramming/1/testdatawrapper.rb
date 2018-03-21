require './datawrapper'
klass =  DataWrapper.wrap("twitter.txt")
list = klass.read
list.each do |location|
  puts "#{location.twitterid} is from the #{location.url}"
end
