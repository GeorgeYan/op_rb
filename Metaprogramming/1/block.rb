def who
  person = "George"
  yield("rocks")
end

person = "David"
who do |y|
  city = "Shanghai"
  puts("#{person}, #{y} the world, #{city} the city")
  city = "Beijing"
end
