class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  private
  def method_missing(name, *args)
    iv = "@#{name.to_s}"
    super unless instance_variables.include?(iv.to_sym)
    instance_variable_get(iv)
  end
end

b = Book.new("The Intelligent Investor", "Benjamin Graham")
p b.title # => "The Intelligent Investor"
p b.author # => "Benjamin Graham"
p b.sb
