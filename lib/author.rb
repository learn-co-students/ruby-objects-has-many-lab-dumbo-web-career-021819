class Author
  attr_accessor :name, :posts

  @@posts_num = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts_num += 1
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    posts << post
    post.author = self
    @@posts_num += 1
  end

  def self.post_count
    @@posts_num
  end

end
