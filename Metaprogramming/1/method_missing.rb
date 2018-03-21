class Rubyist
  def method_missing(m, *args, &block)
    str = "Called #{m} with #{args.inspect}"
    if block_given?
      puts str + " and also a block: #{block}"
    else
      puts str
    end
  end
end

Rubyist.new.anything
Rubyist.new.anything(3,4) { something}
