class Rubyist
  def what_does_he_do
    @person = 'A Rubyist'
    'Ruby programming'
  end

  an_object = Rubyist.new
  puts an_object.class
  puts an_object.class.instance_methods(false)
  p an_object.what_does_he_do
  puts an_object.instance_variables
  puts an_object.instance_variable_get(:@person)

end
