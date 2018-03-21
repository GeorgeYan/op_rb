require 'active_support'
module MyMod
  extend ActiveSupport::Concern

  included do
    a_class_method
  end

  def an_instance_method

  end

  module ClassMethods
    def a_class_method
      puts "a_class_method called"
    end
  end
end

class MyClass
  include MyMod
end
