module MyMod
  def self.included(target)
    target.send(:include, InstanceMethods)
    target.extend ClassMethods
    target.class_eval do
      a_class_method
    end
  end

  module InstanceMethods
    def an_instance_method

    end
  end

  module ClassMethods
    def a_class_method
      puts "a_class_method called"
    end
  end
end

class MyClass
  include MyMod
  p MyClass.ancestors
  puts "`````````````"
  p MyClass.singleton_class.ancestors
end
