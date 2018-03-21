class Post
  attr_reader :title, :content, :comment
  def initialize(title,content,comment)
    @title,@content,@comment = title,content,comment
  end

  def content_avg_length
    words = content.split
    words.inject(0){|sum,word| sum += word.length }/ words.count.to_f
  end

  def total_words
    words = [title,content,comment]
    words.join(" ").split.count
  end

end

post = Post.new("first post","This is a post","haha")
p post.content_avg_length
p post.total_words
