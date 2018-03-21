def func1
  i=0
  #while i<=2 do
  for i in 0..2
    p "func1 at: #{Time.now}"
    sleep(2)
    i+=1
  end
end

def func2
  i=0
  while i<=2 do
    p "func2 at: #{Time.now}"
    sleep(1)
    i+=1
  end
end

t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
t1.join
t2.join
p "end up at: #{Time.now}"
