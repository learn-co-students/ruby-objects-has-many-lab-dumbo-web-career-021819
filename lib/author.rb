class Author

  attr_reader :name
  attr_accessor :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    newPost = Post.new(post_title)
    @posts.push(newPost)
    newPost.author = self
  end

  def self.post_count
    Post.all.length
  end

end
