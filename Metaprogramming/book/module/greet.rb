module Greetings
  def self.included(base)
    base.extend ClassMethods
  end

  def greet
    p "greet"
  end

  module ClassMethods
    def greet
      p "hello"
    end
  end
end

class MyClass
  include Greetings
  p MyClass.ancestors
end

MyClass.greet
MyClass.new.greet

