class Post
  attr_reader :title, :body, :comment
  def initialize(title, body, comment)
    @title = title
    @body = body
    @comment = comment
  end

  def average_word_length
    words = body.split
    words.inject(0){ |memo, word| memo += word.length} / words.count.to_f
  end

  def total_words
    words = [title, body, comment]
    p words
    words.join(" ").split.count
  end

end
my_p = Post.new("haha", "Are you serious", "heihei")
p my_p.average_word_length
p my_p.total_words
