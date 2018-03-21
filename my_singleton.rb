class MySingleton
  def MySingleton.eat; end
  def self.run; end
  instance_eval do
    def walk

    end
  end
  class << self
    def talk

    end
  end
end
p MySingleton.singleton_methods
