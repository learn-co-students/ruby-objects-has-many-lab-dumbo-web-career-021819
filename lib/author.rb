require 'pry'
require_relative 'post.rb'
class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
  end
  @@posts = []
  def posts
    @@posts
  end
  def add_post(postarg)
    # postarg = Post.new(postarg)          WHY NO
    postarg.author = self
    @@posts << postarg
  end
  def add_post_by_title(titlearg)
    titlearg = Post.new(titlearg)       # WHY YES?
    # titlearg.title = titlearg
    add_post(titlearg)
  end
  def self.post_count
    @@posts.length
  end
  # binding.pry
end
