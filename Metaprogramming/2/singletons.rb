class Human
  def Human.about; end
  def self.speak; end
  instance_eval do
    def talk

    end
  end
  class << self
    def laugh

    end
  end
end
p Human.singleton_methods

class Person
  def Person.walk; end
  def self.talk; end

  instance_eval do
    def fuck
    end
  end

  class << self
    def laugth
    end
  end
end

p Person.singleton_methods

class Animal
  def Animal.walk; end
  def self.run; end
  instance_eval do
    def jump
    end
  end

  class << self
    def eat
    end
  end
end

p Animal.singleton_methods

