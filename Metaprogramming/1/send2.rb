class Rubyist
  def also_railist
    puts "1234"
  end
end

rubyist = Rubyist.new()
rubyist.also_railist
if rubyist.respond_to?(:also_railist)
  puts rubyist.send(:also_railist)
else
  puts "No suck information available"
end
