module Man
  def eat
    p "eat"
  end
end

class Male
  include Man
end

class Female
  extend Man
end

Male.new.eat
Female.eat
