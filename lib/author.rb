class Author

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
  end

  def add_post_by_title(new_post_title)
    new_post = Post.new(new_post_title)
    add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end
end
