require 'pry'

class Author

  attr_accessor :name, :posts
  attr_reader

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    @@post_count += 1
    new_post.author= self
    new_post.author
  end

  def add_post_by_title(title)
     new_post = Post.new(title)
     @posts << new_post
     @@post_count += 1
     new_post.author = self
  end

  def self.post_count
    @@post_count
  end

end
