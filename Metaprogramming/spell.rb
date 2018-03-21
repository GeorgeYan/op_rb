# Around Alias
class String
  alias_method :old_reverse, :reverse
  def reverse
    "x#{old_reverse}"
  end
end
p "abc".reverse
puts "1"

# Blank Slate
class C < BasicObject
  def method_missing(name, *args)
    "a Ghost method"
  end
end
obj = C.new
p obj.to_s
puts "2"

# Class Extension
class D; end
module M
  def my_method
    'a class method'
  end
end

class << D
  include M
end
p D.my_method
puts "3"

# Class Instance Variable
class E
  @my_class_instance_variable = "some value"
  def self.class_attribute
    @my_class_instance_variable
  end
end
p E.class_attribute
puts "4"

# Class Macro
class F; end
class << F
  def my_macro(arg)
    p "my_macro(#{arg}) called"
  end
end
class F
  my_macro :x
end
puts "5"

# Class Room
class CleanRoom
  def a_useful_method(x); p x * 2; end
end
CleanRoom.new.instance_eval { a_useful_method(3) }
puts "6"

# Code Processor
File.readlines("a_file_containing_lines_of_ruby.txt").each do |line|
  puts "#{line.chomp} ==> #{eval(line)}"
end
puts "7"

# Context Probe
class G
  def initialize
    @x = "a private instance variable"
  end
end
obj = G.new
p obj.instance_eval { @x }
puts "8"

# Deferred Evaluation
class H
  def store(&block)
    @my_code_capsule = block
  end

  def excute
    @my_code_capsule.call
  end
end
obj = H.new
obj.store { $X = 1}
$X = 0
obj.excute
p $X
puts "9"

# Dynamic Dispatch
dynamic_call = :reverse
obj = "abc"
p obj.send(dynamic_call)
puts "10"

# Dynamic Method
class I
end
I.class_eval do
  define_method :my_dynamic_method do
    "a dynamic method"
  end
end
obj = I.new
p obj.my_dynamic_method
puts "11"

# Dynamic Proxy
class J
  def initialize(target)
    @target = target
  end

  def method_missing(name, *args, &block)
    "result: #{@target.send(name, *args, &block)}"
  end
end
obj = J.new("a string")
p obj.reverse
puts "12"

# Flat Scope
class K
  def an_attribute
    @attr
  end
end

obj = K.new
a_variable = 100
obj.instance_eval do
  @attr = a_variable
end
p obj.an_attribute
puts "13"

# Ghost Method
class L
  def method_missing(name, *args)
    name.to_s.reverse
  end
end
obj = L.new
p obj.my_ghost_method
puts "14"

# Hook Method
$INHERITORS = []
class N
  def self.inherited(subclass)
    $INHERITORS << subclass
  end
end

class O < N; end
class P < N; end
class Q < P; end
p $INHERITORS
puts "15"

# Kernel Method
module Kernel
  def a_method
    "a kernel method"
  end
end
p a_method
puts "16"

# Lazy Instace Variable
class R
  def attribute
    @attribute = @attribute || "some value"
  end
end
obj = R.new
p obj.attribute
puts "17"

# Mimic Method
def BaseClass(name)
  name == "string" ? String : Object
end

class S < BaseClass "string"
  attr_accessor :an_attribute
  def initialize
    @an_attribute = 22
  end
end
obj = S.new
obj.an_attribute = 1
p obj.an_attribute
puts "18"

# Monkeypatch
p "abc".reverse
class String
  def reverse
    "override"
  end
end
p "abc".reverse
puts "19"

# Namespace
module MyNamespace
  class Array
    def to_s
      "my_class"
    end
  end
end
p Array.new
p MyNamespace::Array.new.to_s
puts "20"

# Nil Guard
x = nil
p y = x || "a value"
puts "21"

# Object Extension
obj = Object.new
module U
  def my_method
    'a singleton method'
  end
end
class << obj
  include U
end
p obj.my_method
puts "22"

# Open Class
class String
  def my_string_method
    "my_method"
  end
end
p "abc".my_string_method
puts "23"

# Prepended Wrapper
module V
  def reverse
    "x#{super}x"
  end
end
String.class_eval do
  prepend V
end
p "abc".reverse
puts "24"

# Refinement
module MyRefinemethod
  refine String do
    def reverse
      "my reverse"
    end
  end
end
p "abc".reverse
using MyRefinemethod
p "abc".reverse
puts "25"

# Refinement Wrapper
module StringRefinement
  refine String do
    def reverse
      "z#{super}z"
    end
  end
end
using StringRefinement
p "abc".reverse
puts "26"

# Sanbox
def sandbox(&code)
  proc {
    $SAFE = 2
    yeild
  }.call
end
begin
  sanbox { File.delete 'a_file'}
rescue Exception => ex
  ex
end
puts "27"

# Scope Gate
a = 1
p defined? a
module W
  b = 1
  p defined? a
  p defined? b
end
p defined? a
p defined? b
puts "28"

# Self Yield
class Person
  attr_accessor :name, :surname
  def initialize
    yield self
  end
end
joe = Person.new do |x|
  p x.name = "Joe"
  p x.surname = "Smith"
end
puts "29"

# Shared Scope
lambda {
  shared = 10
  self.class.class_eval do
    define_method :counter do
      shared
    end
    define_method :down do
      shared -= 1
    end
  end
}.call
p counter
3.times { down }
p counter
puts "30"

# Singleton Method
obj = "abc"
class << obj
  def my_singleton_method
    "x"
  end
end
p obj.my_singleton_method
puts "31"

# String of Code
my_string_of_code = "1 + 1"
p eval(my_string_of_code)
puts "32"

# Symbol To Proc
p [1,2,3,4].map(&:odd?)
puts "33"
