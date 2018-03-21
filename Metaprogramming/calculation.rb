# encoding: UTF-8

# Run tests
# ruby oracle_interview_calculation.rb

REQUIREMENTS=<<REQUIREMENTS
References:
[1] https://ruby-china.org/topics/25179 [北京] 甲骨文社交云平台团队招聘 Ruby 软件开发工程师 － 继续招聘
[2] http://www.codewars.com/kata/calculating-with-functions/ruby
Description:
This time we want to write calculations using functions and get the results. Let's have a look at some examples:
seven(times(five())); // must return 35
four(plus(nine())); // must return 13
eight(minus(three())); // must return 5
six(dividedBy(two())); // must return 3
Requirements:
There must be a function for each number from 0 ("zero") to 9 ("nine")
There must be a function for each of the following mathematical operations: plus, minus, times, dividedBy (divided_by in Ruby)
Each calculation consist of exactly one operation and two numbers
The most outer function represents the left operand, the most inner function represents the right operand
REQUIREMENTS



module Calculation
    # We use `method_missing` and `define_method` to define number and operator methods lazily, and with cached.

    class NumberValue < Struct.new(:number)
        alias to_ary  number
        alias inspect number
    end
    class OperationValue < Struct.new(:operation)
        alias to_ary  operation
        alias inspect operation
    end
    class MiddleRightExpression < Struct.new(:operation, :number)
    end


    Numbers        = "zero one two three four five six seven eight nine".split(" ").map(&:to_sym)
    NumMap         = Hash[Numbers.zip((0..Numbers.size).map {|idx| NumberValue.new(idx) })]          # Ruby 1.8.7
    # NumMap         = Hash[Numbers.map.with_index {|num, idx| [num.to_sym, NumberValue.new(idx)] }] # Ruby 1.9.3 and above

    OperationsMap  = {
                      :plus          => OperationValue.new(:+),
                      :minus         => OperationValue.new(:-),
                      :times         => OperationValue.new(:*),
                      :divided_by    => OperationValue.new(:/),
                     }


    def method_missing(name, *args, &block)
        #0. Check name is valid
        if not NumMap.include?(name) and not OperationsMap.include?(name)
            super
        end

        #1. Define a number method lazily
        expression_num = NumMap.fetch(name, false)
        if expression_num.is_a?(NumberValue)
            Kernel.send(:define_method, name) do |*_args|
              arg = _args[0] # compact with 1.8.7
                if arg
                    if arg.is_a?(MiddleRightExpression)
                        return expression_num.number.__send__(arg.operation, arg.number)
                    else
                        raise "`#{arg}` should be a MiddleRightExpression"
                    end
                else
                  return expression_num.number
                end
            end
        end

        #2. Define a operation method lazily
        expression_opr = OperationsMap.fetch(name, false)
        if expression_opr.is_a?(OperationValue)
            Kernel.send(:define_method, name) do |number|
              return MiddleRightExpression.new(expression_opr.operation, number)
            end
        end

        return self.__send__(name, *args, &block)
    end

    def respond_to?(name, include_all=false)
        # I hate that Ruby dont bundle `method_missing` and `respond_to?` methods together, just another best practice. Thx @billy.
        if NumMap.include?(name) or OperationsMap.include?(name)
          return true
        else
          super
        end
    end
    # def respond_to_missing?(name, include_private=false) # TODO

end


require "test/unit"

class TestCalculation < Test::Unit::TestCase
    include Calculation

    puts "Welcome to do some calculations!"
    puts "Avaiable numbers   are: #{Calculation::Numbers.join(", ")}."
    puts "Avaiable operators are: #{Calculation::OperationsMap.keys().join(", ")}."
    puts
    puts "Usage:"
    puts "    seven(times(five())) # => 35"
    puts
    puts "Note:"
    puts "This DSL is limited, can't support operator precedence, it's done by single nested parentheses."
    puts
    puts "*"*100
    puts
    puts REQUIREMENTS
    puts

    def test_simple
        #1. some test cases from requirement
        assert_equal(5,  five())
        assert_equal(35, seven(times(five())))
        assert_equal(13, four(plus(nine())))
        assert_equal(5,  eight(minus(three())))
        assert_equal(3,  six(divided_by(two())))

        #2. more complex test cases
        assert_equal(6,  one(plus(two(plus(three)))))
        assert_equal(6,  one(times(two(times(three)))))
        assert_equal(7,  one(plus(two(times(three)))))

        #3. test respond_to?
        assert(self.respond_to?(:five))
        assert(self.respond_to?(:times))
    end

end
