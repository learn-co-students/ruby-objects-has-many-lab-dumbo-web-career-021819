class Author
  attr_accessor :posts
  attr_reader :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post) # post is an Post instance
    post.author = self
    @posts << post
    return post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    self.posts << new_post
  end

  def self.post_count
    Post.all.count
  end

end
