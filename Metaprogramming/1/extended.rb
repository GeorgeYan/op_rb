module A
  def self.extended(mod)
    puts "#{self} extended in #{mod}"
  end
end

module Enumerable
  extend A
end
