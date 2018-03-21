class Rubyist
  obj = Object.new
  if obj.respond_to?(:program)
    obj.program
  else
    puts "Sorry, the object doesn't understand the 'program' message."
  end
end
