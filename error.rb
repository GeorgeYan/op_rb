class YouError < StandardError; end

class MyError
  def my_method
    begin
      raise YouError, "出错了"
    rescue YouError => e
       e
    end
  end
end

p MyError.new.my_method
