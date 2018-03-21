class MyClass
  def method_missing(m,*args,&block)
    p "call method with #{m}: #{args}"
    if block_given?
      p "also block #{block}"
    else

    end

  end
end

MyClass.new.anything(3,4){ "helloworld"}
