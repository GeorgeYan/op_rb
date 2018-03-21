class YouError < StandardError; end
class MyError
  def my_method
    begin
      raise YouError.new, 'Argument is not numeric'
    rescue YouError => e
      "There is error: #{e}"
    end
  end
end
p p = MyError.new.my_method
