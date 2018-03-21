require './support'

class Decade
  include Week
  def no_of_months
    puts Week::FIRST_DAY
  end
end

d1 = Decade.new
d1.no_of_months
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year

