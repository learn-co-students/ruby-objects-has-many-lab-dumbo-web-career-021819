class Post

  attr_accessor :author, :body, :title

  @@all = []

  def initialize(post_body)
    @body = post_body
    @title = post_body
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author ? self.author.name : self.author
  end

end
